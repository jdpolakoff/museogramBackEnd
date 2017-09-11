class ArtworksController < ApplicationController
  # before_action :set_artwork, only: [:show, :edit, :update, :destroy]

  # GET /artworks
  # GET /artworks.json
  def index
    museum_id = params[:museum_id].to_i

    if museum_id > 0
      # page size
      limit = params[:limit].to_i
      limit = 25 if limit == 0

      # records to skip before page
      offset = params[:offset].to_i

      # direction of results
      order = if params[:sortType].to_s.upcase == "DESC"
        "DESC"
      else
        # Default Ascending order
        "ASC"
      end

      @artworks = Artwork.where(museum_id: museum_id)
        .limit(limit)
        .offset(offset)
        .order("id #{order}")
    else
      @artworks = Artwork.all
    end

    render json: @artworks
  end

  # GET /artworks/1
  # GET /artworks/1.json
  def show
    @artwork = Artwork.find(params[:id])
    render json: @artwork.to_json(:include => :reviews)
  end



  private
    # Never trust parameters from the scary internet, only allow the white list through.
end
