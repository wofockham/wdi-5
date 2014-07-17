class PrioritiesController < ApplicationController
  before_action :check_if_logged_in

  def index
    @priorities = @current_user.priorities.order(:urgency).reverse
  end

  def create
    binding.pry

    priority = Priority.new :name => params[:name], :color => params[:color], :urgency => params[:urgency]
    if priority.save
      @current_user.priorities << priority
      render :json => priority
    else
      raise "ARGH"
    end
  end

  private
  def check_if_logged_in
    redirect_to(root_path) unless @current_user
  end
end
