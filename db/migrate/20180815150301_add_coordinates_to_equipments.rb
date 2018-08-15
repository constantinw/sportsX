class AddCoordinatesToEquipments < ActiveRecord::Migration[5.2]
  def change
    add_column :equipments, :latitude, :float
    add_column :equipments, :longitude, :float
  end
end
