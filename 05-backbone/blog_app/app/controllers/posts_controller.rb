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

  def create
    @post = Post.create(:title => params[:title], :content => params[:content])
    render :json => @post
  end

  def update
    @post = Post.find params[:id]
    @post.update(:title => params[:title], :content => params[:content])
    render :json => @post
  end
end
