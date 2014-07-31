class PostsController < ApplicationController
  def index
    @posts = Post.all
    respond_to do |format|
      format.html {}
      format.json { render :json => @posts }
    end
  end

  def show
    @post = Post.find params[:id]
  end
end
