class ReviewsController < ApplicationController

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    # we need `restaurant_id` to asssociate review with corresponding restaurant
    @review.restaurant = Restaurant.find(params[:restaurant_id])
    if @review.save
      redirect_to restaurant_reviews_path
    else render :new
    end
  end

    def index
      @restaurant = Restaurant.find(params[:restaurant_id])
      @reviews= @restaurant.reviews
    end

    private

    def review_params
      params.require(:review).permit(:content, :rating, :restaurant)
    end

  # def find_restaurant
  #    @restaurant = Restaurant.find(params[:id])
  # end

end




