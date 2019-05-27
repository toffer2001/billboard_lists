class ArtistsController < ApplicationController
before_action :set_song
before_action :set_artist, only: [:show, :update, :edit, :destroy]

  def index
    @artists = Artist.all.order(:name)
  end

  def show
    # before_action
  end

  def new
    @artist = @song.artists.new
    render partial: 'form'
  end

  def create
    @artist = @song.artists.new(artist_params)
    if @artist.save
      redirect_to [@song, @artist]
    else
      render :new
    end
  end

  def edit
    # before_action
    render partial: 'form'
  end

  def update
    # before_action
    if @artist.update(artist_params)
      redirect_to [@song, @artist]
    else
      render :edit
    end
    
  end

  def destroy
    # before_action
    @artist.destroy
    redirect_to song_artists_path
  end

  private

  def set_song
    @song = Song.find(params[:song_id])
  end

  def set_artist
    @artist = Artist.find(params[:id])
  end

  def artist_params
    params.require(:artist).permit(:name)
  end
end
