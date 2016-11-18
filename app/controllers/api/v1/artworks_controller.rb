module Api
  module V1
    class ArtworksController < ApplicationController

      ### GET    /api/v1/artworks(.:format)          api/v1/artworks#index
      def index
        render json: Artwork.all
      end

      ### GET    /api/v1/artworks/:id(.:format)      api/v1/artworks#show
      def show
        render json: Artwork.find_by(id: params[:id])
      end

      def new
        @artwork = Artwork.new
      end

      ###  POST   /api/v1/artworks(.:format)          api/v1/artworks#create
      def create
        @artwork = Artwork.create(artwork_params)
        if @artwork.errors.empty?
          render json: @artwork
        else
          render json: @artwork.errors, layout: false, status: 422
        end
      end

      def edit
        @artwork = Artwork.find_by(id: params[:id])
      end

      ###  PUT    /api/v1/artworks/:id(.:format)      api/v1/artworks#update
      def update
        @artwork = Artwork.find_by(id: params[:id])
        @artwork.update(artwork_params)
        if @artwork.errors.empty?
          render json: @artwork
        else
          render json: @artwork.errors, layout: false, status: 422
        end
      end

      private

      def artwork_params
        params.require(:artwork).permit(:editable, :state)
      end


    end
  end
end
