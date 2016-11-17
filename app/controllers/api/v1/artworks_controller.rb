module Api
  module V1
    class ArtworksController < ApplicationController

      def index
        render json: Artwork.all
      end

      def show
        render json: Artwork.find_by(id: params[:id])
      end

      def new
      end

      def create
      end

      def edit
      end

      def update
      end

      private

      def artwork_params
        params.require(:artwork).permit(:editable, :state)
      end


    end
  end
end
