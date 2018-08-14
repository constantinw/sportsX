class EquipmentsController < ApplicationController

  def show
    @equipment = Equipment.find(params[:id])
  end
end
