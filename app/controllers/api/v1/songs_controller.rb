class Api::V1::SongsController < ApplicationController
  respond_to :json

  def index
    respond_with Song.all
  end

  def show
    respond_with song
  end

  def create
    song = Song.create(song_params)
    respond_with song, location: api_v1_song_url(song)
  end

  def update
    respond_with song.update(song_params)
  end

  def destroy
    respond_with song.destroy
  end

private

  def song
    Song.find(params[:id])
  end

  def song_params
    params.require(:song).permit(:title, :text)
  end
end
