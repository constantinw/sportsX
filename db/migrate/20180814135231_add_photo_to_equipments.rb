class AddPhotoToEquipments < ActiveRecord::Migration[5.2]
  def change
    add_column :equipments, :photo, :string
  end
end
