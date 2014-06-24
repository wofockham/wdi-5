class PlanetsController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def index
    @planets = Planet.all
  end

  def new
  end

  def create
    Planet.create params.require(:planet).permit(:name, :image, :orbit, :diameter, :mass, :moons)
    redirect_to planets_path
  end

  def show
    @planet = Planet.find params[:id]
  end
end
