class PlanetsController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def index
    @planets = Planet.all
  end

  def new
  end

  def create
    planet = Planet.create params[:planet]
    redirect_to planets_path
  end
end
