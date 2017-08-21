class ReviewsController < ApplicationController
  before_action :set_museum, only: [:show, :edit, :update, :destroy]

  # GET /reviews
  # GET /reviews.json
  def index
    @reviews = Review.all


  end

  # GET /reviews/1
  # GET /reviews/1.json
  def show


  end



  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def reviews_params
      params.fetch(:review, {})
    end
end
