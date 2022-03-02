class ReviewsController < ApplicationController
  # /restaurants/185/reviews/new
  # /restaurants/:restaurant_id/reviews/new
  # params { restaurant_id: 185 }
  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  # /restaurants/185/reviews
  # /restaurants/:restaurant_id/reviews
  # params { restaurant_id: 185 }
  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy

    redirect_to restaurant_path(@review.restaurant)
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
