class PagesController < ApplicationController
  def index
  end

  def brothers
    @brother = %w{groucho harpo chico zeppo gummo}.sample
    result = {
      :brother => @brother.capitalize,
      :magic => Random.rand(1..10),
      :surname => 'Marx',
      :status => 'okay'
    }
    respond_to do |format|
      format.html {}
      format.js { render :json => result }
      format.json { render :json => result }
    end
  end
end
