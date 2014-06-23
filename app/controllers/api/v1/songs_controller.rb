class Api::V1::SongsController < ApplicationController
  respond_to :json

  def index
    respond_with Song.all.order(:position)
  end

  def show
    respond_with song
  end

  def create
    respond_with :api, :v1, Song.create(song_params)
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
    params.require(:song).permit(:title, :text, :position)
  end
end
