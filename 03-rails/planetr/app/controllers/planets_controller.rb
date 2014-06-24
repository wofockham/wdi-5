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

  def destroy
    planet = Planet.find params[:id]
    planet.destroy
    redirect_to planets_path
  end

  def edit
    @planet = Planet.find params[:id]
  end

  def update
    planet = Planet.find params[:id]
    planet.update params.require(:planet).permit(:name, :image, :orbit, :diameter, :mass, :moons)
    redirect_to planets_path
  end
end
