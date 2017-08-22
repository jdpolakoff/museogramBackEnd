class ReviewsController < ApplicationController
  # before_action :set_museum, only: [:show, :edit, :update, :destroy]

  # GET /reviews
  # GET /reviews.json
  def index
    @reviews = Review.all
    render json: @reviews
  end

  # GET /reviews/1
  # GET /reviews/1.json
  def show
    @review = Review.find(params[:id])
    render json: @review
  end

  def create
      @review = Review.create!(reviews_params)
       render json: @review
  end


  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def reviews_params
      params.require(:review).permit(:name, :title, :content, :artwork_id)
    end
end
