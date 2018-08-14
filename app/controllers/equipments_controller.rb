class EquipmentsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  def index
    @equipments = Equipment.all
  end
end
