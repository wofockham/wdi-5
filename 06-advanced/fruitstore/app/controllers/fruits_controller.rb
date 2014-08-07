class FruitsController < ApplicationController
  def index
    @fruits = Fruit.order('created_at DESC')
  end
end
