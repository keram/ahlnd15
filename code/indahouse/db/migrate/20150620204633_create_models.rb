class CreateModels < ActiveRecord::Migration
  def change
    create_table :models do |t|
      t.string :name, null: false
      t.string :file, null: false

      t.timestamps null: false
    end
  end
end
