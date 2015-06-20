json.array!(@sensor_events) do |sensor_event|
  json.extract! sensor_event, :id, :name, :description
  json.url sensor_event_url(sensor_event, format: :json)
end
