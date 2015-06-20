class CreateSensorEventActions < ActiveRecord::Migration
  def change
    create_table :sensor_event_actions do |t|
      t.string :name
      t.text :description

      t.timestamps null: false
    end
  end
end
