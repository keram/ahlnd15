class ModelSensor < ActiveRecord::Base
  belongs_to :model
  belongs_to :sensor
end
