class SongsController < ApplicationController
  respond_to :json

  def index
    respond_with Song.all
  end

  def show
    respond_with song
  end

  def update
    respond_with song.update(song_params)
  end

private

  def song
    Song.find(params[:id])
  end

  def song_params
    params.require(:song).permit(:title, :text)
  end
end
