module Api
  module V1
    class SongsController < ApplicationController
      respond_to :json

      def index
        respond_with Song.all
      end

      def show
        respond_with song
      end

      def create
        respond_with Song.create(song_params)
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
  end
end
