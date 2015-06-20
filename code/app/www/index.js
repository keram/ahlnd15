function loadModel(viewer_holder, urn) {
    var tokenurl = 'http://' + window.location.host + '/api/token';
    var config = {
        environment : 'AutodeskProduction',
        //environment : 'AutodeskStaging'
    };

    // Instantiate viewer factory
    var viewerFactory = new Autodesk.ADN.Toolkit.Viewer.AdnViewerFactory(
        tokenurl,
        config);

    viewerFactory.getViewablePath(urn,
        function(pathInfoCollection) {
            var viewer,
                viewerConfig = {
                    viewerType: 'GuiViewer3D',
                    version: '1.2.15'
                };

            viewer_holder.empty();

            viewer = viewerFactory.createViewer(
                viewer_holder.get(0),
                viewerConfig);

            viewer.load(pathInfoCollection.path3d[0].path);
        },
        console.log);
}

$(document).ready(function () {
    var defaultUrn = 'dXJuOmFkc2sub2JqZWN0czpvcy5vYmplY3Q6aW5kYWhvdXNlL1NhbXBlSG91c2UzRC5kd2c',
        holder = $('#viewer-container');

    loadModel(holder, defaultUrn);
});



// function onError(error) {
//     console.log('Error: ' + error);
// };

// The following code does not rely on Autodesk.ADN.Toolkit.Viewer.AdnViewerManager
// and uses the Autodesk API directly.
//
//        $(document).ready(function () {
//            var getToken =  function() {
//                var xhr = new XMLHttpRequest();
//                xhr.open("GET", 'http://' + window.location.host + '/api/token', false);
//                xhr.send(null);
//                return xhr.responseText;
//            }
//
//            function initializeViewer(containerId, documentId, role) {
//                var viewerContainer = document.getElementById(containerId);
//                var viewer = new Autodesk.Viewing.Private.GuiViewer3D(
//                        viewerContainer);
//                viewer.start();
//
//                Autodesk.Viewing.Document.load(documentId,
//                        function (document) {
//                            var rootItem = document.getRootItem();
//                            var geometryItems = Autodesk.Viewing.Document.getSubItemsWithProperties(
//                                    rootItem,
//                                    { 'type': 'geometry', 'role': role },
//                                    true);
//
//                            viewer.load(document.getViewablePath(geometryItems[0]));
//                        },
//
//                        // onErrorCallback
//                        function (msg) {
//                            console.log("Error loading document: " + msg);
//                        }
//                );
//            }
//
//            function initialize() {
//                var options = {
//                    env: "AutodeskProduction",
//                    getAccessToken: getToken,
//                    refreshToken: getToken
//                };
//
//                Autodesk.Viewing.Initializer(options, function () {
//                    initializeViewer('viewerDiv', urn, '3d');
//                });
//            }
//
//            initialize();
//        });
