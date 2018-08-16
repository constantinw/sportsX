class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home


  def home
    @equipments = Equipment.all
  end

  def about
  end


end
