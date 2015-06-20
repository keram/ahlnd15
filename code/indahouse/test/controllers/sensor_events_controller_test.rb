require 'test_helper'

class SensorEventsControllerTest < ActionController::TestCase
  setup do
    @sensor_event = sensor_events(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sensor_events)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sensor_event" do
    assert_difference('SensorEvent.count') do
      post :create, sensor_event: { description: @sensor_event.description, name: @sensor_event.name }
    end

    assert_redirected_to sensor_event_path(assigns(:sensor_event))
  end

  test "should show sensor_event" do
    get :show, id: @sensor_event
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sensor_event
    assert_response :success
  end

  test "should update sensor_event" do
    patch :update, id: @sensor_event, sensor_event: { description: @sensor_event.description, name: @sensor_event.name }
    assert_redirected_to sensor_event_path(assigns(:sensor_event))
  end

  test "should destroy sensor_event" do
    assert_difference('SensorEvent.count', -1) do
      delete :destroy, id: @sensor_event
    end

    assert_redirected_to sensor_events_path
  end
end
