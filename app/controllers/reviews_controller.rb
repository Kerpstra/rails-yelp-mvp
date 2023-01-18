class ReviewsController < ApplicationController
  before_action :set_params

  def new
    # restaurant id is set in the before action
    @review = Review.new
  end

  def create
    # restaurant id is set in the before action
    @review = Review.new(review_params)
    # set the restaurant id in the review
    @review.restaurant = @restaurant

    # try to save, if saving was succesfull
    if @review.save
      # redirect to the page of the reviewed restaurant
      redirect_to @restaurant
    else
      # else don't save and give this error
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_params
    # this should refer to restaurant_id as it is in the reviews table
    # restaurant id is singular not plural
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def review_params
    # params require for review is singular NOT plural
    params.require(:review).permit(:rating, :content)
  end
end
