// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require foundation
// require turbolinks
// require_tree .

function onAutodeskError(error) {
    console.log('Autodesk: ', error);
}

function createSpinner(holder) {
    $('<p/>', {
        id: 'spinner',
        text: 'Loading 3D model..'
    }).appendTo(holder);
}

function createModelWrapper(holder) {
    $('<div/>', {
        'class': 'model-wrapper'
    }).appendTo(holder).hide();
}



function onSucessModelLoad() {
    console.log('onSucessModelLoad');
    $('#spinner').hide();
    $('.model-wrapper').show();
}

function onErrorModelLoad() {
    console.log('onErrorModelLoad');
    $('#spinner').hide();
    $('#spinner').parent().html('Error occured, you can blame Autodesk :)');
}

function loadModel(holder, urn) {
    var tokenurl = 'http://' + window.location.host + '/api/v1/token',
        config = {
            environment : 'AutodeskProduction',
            //environment : 'AutodeskStaging'
        },

        viewerFactory;

    createSpinner(holder);

    // Instantiate viewer factory
    viewerFactory = new Autodesk.ADN.Toolkit.Viewer.AdnViewerFactory(
        tokenurl,
        config);

    viewerFactory.getViewablePath(urn,
        function(pathInfoCollection) {
            var viewer,
                viewerConfig = {
                    viewerType: 'GuiViewer3D',
                    version: '1.2.15'
                };

            holder.empty();

            viewer = viewerFactory.createViewer(
                holder.get(0),
                viewerConfig);

            viewer.load(
                pathInfoCollection.path3d[0].path);
        },
        onAutodeskError);
}

$(function(){
    $(document).foundation();

    $('[data-model-urn]').each(function () {
        var holder = $(this);

        loadModel(holder, holder.data('model-urn'));
    });
});
