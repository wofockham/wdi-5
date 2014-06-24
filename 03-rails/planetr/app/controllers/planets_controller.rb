class PlanetsController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def index
    @planets = Planet.all
  end

  def new
  end

  def create
    #render :text => 'test test test test test'
    raise params.inspect
  end
end
