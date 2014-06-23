class DogsController < ApplicationController
  def index
    # Default: render a view with the same name as this action.
    # render 'index'
  end

  def new
    redirect_to('/')
  end

  def faq
    # Render a view from a different controller.
    render '/pages/faq'
  end
end
