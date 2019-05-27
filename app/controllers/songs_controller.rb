class SongsController < ApplicationController
  
  before_action :set_billboard
  before_action :set_song, only: [:show, :edit, :update, :destroy]

  def index
    @songs = @billboard.songs.order(:rank)
  end

  def show
    # before_action
  end

  def new
    @song = @billboard.songs.new
    render partial: 'form'

  end

  def create

    @song = @billboard.songs.new(song_params)

    if @song.save
      redirect_to [@billboard, @song]
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
    if @song.update(song_params)
      redirect_to [@billboard, @song]
    else
      render :edit
    end
  end

  def destroy
    # before_action
    @song.destroy
    redirect_to billboard_song_path
  end

  private

  def set_billboard
    @billboard = Billboard.find(params[:billboard_id])
  end

  
  def set_song
    @song = Song.find(params[:id])
  end

  def song_params
    params.require(:song).permit(:title, :rank)
  end
end
