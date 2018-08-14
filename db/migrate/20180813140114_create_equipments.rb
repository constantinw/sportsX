class CreateEquipments < ActiveRecord::Migration[5.2]
  def change
    create_table :equipments do |t|
      t.string :category
      t.string :brand
      t.string :product_name
      t.string :size
      t.string :location
      t.integer :price_per_day
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
