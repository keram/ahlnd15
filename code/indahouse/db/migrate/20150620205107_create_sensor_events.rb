class CreateSensorEvents < ActiveRecord::Migration
  def change
    create_table :sensor_events do |t|
      t.string :name
      t.text :description

      t.timestamps null: false
    end
  end
end
