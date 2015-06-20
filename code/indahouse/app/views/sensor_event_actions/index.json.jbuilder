json.array!(@sensor_event_actions) do |sensor_event_action|
  json.extract! sensor_event_action, :id, :name, :description, :details
  json.url sensor_event_action_url(sensor_event_action, format: :json)
end
