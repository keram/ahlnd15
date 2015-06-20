class ModelSensorEventAction < ActiveRecord::Base
  belongs_to :model
  belongs_to :model_sensor
  belongs_to :sensor_event
  belongs_to :sensor_event_action
end
