class CreateModelSensors < ActiveRecord::Migration
  def change
    create_table :model_sensors do |t|
      t.references :model, index: true, foreign_key: true
      t.references :sensor, index: true, foreign_key: true
      t.decimal :latitude
      t.decimal :longitude
      t.decimal :sec
      t.string :sensor_state

      t.timestamps null: false
    end
  end
end
