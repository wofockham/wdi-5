class FruitsController < ApplicationController
  def index
    @fruits = Fruit.order('created_at DESC')

    respond_to do |format|
      format.html {}
      format.json { render :json => @fruits }
    end
  end
end
