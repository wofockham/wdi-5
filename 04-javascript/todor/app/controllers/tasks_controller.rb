class TasksController < ApplicationController
  def index
    @tasks = @current_user.tasks
    @task = Task.new
  end
end