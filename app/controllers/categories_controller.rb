class CategoriesController < ApplicationController
  skip_before_action :authenticate_user!
  def air
    @equipments = Equipment.where.not(latitude: nil, longitude: nil)
    @markers = @equipments.map do |equipment|
      {
        lat: equipment.latitude,
        lng: equipment.longitude#,
      }
    end
  end

  def land
    @equipments = Equipment.where.not(latitude: nil, longitude: nil)
    @markers = @equipments.map do |equipment|
      {
        lat: equipment.latitude,
        lng: equipment.longitude#,
      }
    end
  end

  def water
    @equipments = Equipment.where.not(latitude: nil, longitude: nil)
    @markers = @equipments.map do |equipment|
      {
        lat: equipment.latitude,
        lng: equipment.longitude#,
      }
    end
  end

  def groups
    @equipments = Equipment.where.not(latitude: nil, longitude: nil)
    @markers = @equipments.map do |equipment|
      {
        lat: equipment.latitude,
        lng: equipment.longitude#,
      }
    end
  end
end
