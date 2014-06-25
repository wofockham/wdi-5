class WorksController < ApplicationController
  def index
    @works = Work.all
  end

  def create
    work = Work.create params.require(:work).permit(:title, :year, :medium, :style, :image)
    redirect_to work
  end

  def new
    @work = Work.new
  end

  def edit
  end

  def show
    @work = Work.find params[:id]
  end

  def update
  end

  def destroy
    work = Work.find params[:id]
    work.destroy
    redirect_to works_path
  end
end
