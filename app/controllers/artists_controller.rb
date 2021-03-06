class ArtistsController < ApplicationController

  def index
    @artists = Artist.all.order_list(params[:sort_by])
    #@artists ||= []
  end

  def show
    @artist = Artist.find(params[:id])
    @songs = @artist.songs
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new(artist_params)
    if @artist.save
      redirect_to @artist, notice: "Artist created"
    else
      render :new
    end
  end

  def edit
     @artist = Artist.find(params[:id])

  end

  def update
    @artist = Artist.find(params[:id])

    if @artist.update_attributes(artist_params)
      redirect_to @artist, notice: "Artist updated"
    else
      render :edit
    end
  end

  def destroy
    @artist = Artist.find(params[:id])

    @artist.destroy

    redirect_to artists_path
  end

private

  def artist_params
    params
          .require(:artist)
          .permit(
            :name, :image
          )
  end

end
