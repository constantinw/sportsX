class CategoriesController < ApplicationController
  skip_before_action :authenticate_user!
  def air
    @equipments = Equipment.where(category: "Air")
    @markers = @equipments.map do |equipment|
      {
        lat: equipment.latitude,
        lng: equipment.longitude#,
      }
    end
  end

  def land
    @equipments = Equipment.where(category: "Land")
    @markers = @equipments.map do |equipment|
      {
        lat: equipment.latitude,
        lng: equipment.longitude#,
      }
    end
  end

  def water
    @equipments = Equipment.where(category: "Water")
    @markers = @equipments.map do |equipment|
      {
        lat: equipment.latitude,
        lng: equipment.longitude#,
      }
    end
  end

  def groups
    @equipments = Equipment.where(category: "Groups")
    @markers = @equipments.map do |equipment|
      {
        lat: equipment.latitude,
        lng: equipment.longitude#,
      }
    end
  end
end
