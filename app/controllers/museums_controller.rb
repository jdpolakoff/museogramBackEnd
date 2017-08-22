class MuseumsController < ApplicationController

  # GET /museums
  # GET /museums.json
  def index
    @museums = Museum.all

    render json: @museums
  end

  # GET /museums/1
  # GET /museums/1.json
  def show
    @museum = Museum.find(params[:id])
    @artworks = @museum.artworks
    render :json => @museum.to_json(:include => {:artworks => {:include => :reviews}})
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def museum_params
      params.fetch(:museum, {})
    end

end
