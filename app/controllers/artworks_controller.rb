class ArtworksController < ApplicationController
  before_action :set_museum, only: [:show, :edit, :update, :destroy]

  # GET /artworks
  # GET /artworks.json
  def index
    @artworks = Artwork.all


  end

  # GET /artworks/1
  # GET /artworks/1.json
  def show


  end



  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def reviews_params
      params.fetch(:artwork, {})
    end
end
