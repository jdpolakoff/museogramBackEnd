class ReviewsController < ApplicationController
  # before_action :set_museum, only: [:show, :edit, :update, :destroy]

  # GET /reviews
  # GET /reviews.json
  def index
    @reviews = Review.all
  end

  # GET /reviews/1
  # GET /reviews/1.json
  def show
  end

  def new
      @review = Review.new
       render json: @review
  end

    def edit
       @artwork = Artwork.find(params[:artwork_id])
       @review = Review.find(params[:id])
       render json: @review
    end


    def create
        @artwork = Artwork.find(params[:artwork_id])
        @review = @artwork.reviews.build(params[:id])
         render json: @review
    end

    def update
    @artwork = Artwork.find(params[:artwork_id])
    @review = @artwork.reviews.find(params[:id])
     render json: @review
   end

    def destroy
        @artwork = Artwork.find(params[:artwork_id])
        @review = @artwork.reviews.find(params[:id])
        @review.destroy

    end


  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def reviews_params
      params.require(:review).permit(:name, :title, :content)

    end
end
