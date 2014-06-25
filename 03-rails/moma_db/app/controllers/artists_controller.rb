class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def create
    artist = Artist.create params.require(:artist).permit(:name, :nationality, :dob, :period, :image)
    redirect_to artist
  end

  def new
    @artist = Artist.new
  end

  def edit
  end

  def show
    @artist = Artist.find params[:id]
  end

  def update
  end

  def destroy
    artist = Artist.find params[:id]
    artist.destroy
    redirect_to artists_path
  end
end
