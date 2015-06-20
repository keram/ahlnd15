class CreateModelSensorEventActions < ActiveRecord::Migration
  def change
    create_table :model_sensor_event_actions do |t|
      t.references :model_sensor, index: true, foreign_key: true
      t.references :sensor_event, index: true, foreign_key: true
      t.references :sensor_event_action, index: true, foreign_key: true
      t.text :action_details

      t.timestamps null: false
    end
  end
end
