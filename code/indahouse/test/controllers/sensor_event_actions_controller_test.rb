require 'test_helper'

class SensorEventActionsControllerTest < ActionController::TestCase
  setup do
    @sensor_event_action = sensor_event_actions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sensor_event_actions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sensor_event_action" do
    assert_difference('SensorEventAction.count') do
      post :create, sensor_event_action: { description: @sensor_event_action.description, details: @sensor_event_action.details, name: @sensor_event_action.name }
    end

    assert_redirected_to sensor_event_action_path(assigns(:sensor_event_action))
  end

  test "should show sensor_event_action" do
    get :show, id: @sensor_event_action
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sensor_event_action
    assert_response :success
  end

  test "should update sensor_event_action" do
    patch :update, id: @sensor_event_action, sensor_event_action: { description: @sensor_event_action.description, details: @sensor_event_action.details, name: @sensor_event_action.name }
    assert_redirected_to sensor_event_action_path(assigns(:sensor_event_action))
  end

  test "should destroy sensor_event_action" do
    assert_difference('SensorEventAction.count', -1) do
      delete :destroy, id: @sensor_event_action
    end

    assert_redirected_to sensor_event_actions_path
  end
end
