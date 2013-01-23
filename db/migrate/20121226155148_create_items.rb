class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name, :null => false
      t.string :brand, :null => false
      t.string :unit_of_measurement, :null => false
      t.integer :quantity, :null => false
      t.decimal :unit_price
      t.decimal :price, :null => false

      t.references :grocery, :null => false

      t.timestamps
    end
  end
end
