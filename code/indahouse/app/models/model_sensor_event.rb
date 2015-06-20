class ModelSensorEvent < ActiveRecord::Base
  belongs_to :model_sensor
  belongs_to :sensor_event
end
