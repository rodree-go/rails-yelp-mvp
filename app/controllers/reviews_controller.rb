class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      redirect_to restaurant_path(@restaurant)
    end
  end

  def update
  end

  def destroy
  end



  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
