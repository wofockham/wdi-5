class PrioritiesController < ApplicationController
  before_action :check_if_logged_in

  def index
    @priorities = @current_user.priorities
  end

  private
  def check_if_logged_in
    redirect_to(root_path) unless @current_user
  end
end
