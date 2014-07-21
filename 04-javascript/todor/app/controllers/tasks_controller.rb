class TasksController < ApplicationController
  def index
    @tasks = @current_user.tasks
    @task = Task.new
  end

  def create
    @task = Task.new task_params
    if @task.save
      @current_user.tasks << @task
      render :json => @task
    end
  end

  private
  def task_params
    params.require(:task).permit(:title, :description, :duedate, :completed, :priority_id, :address)
  end
end