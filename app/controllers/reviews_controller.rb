class ReviewsController < ApplicationController
  def create

  end

  protected

  def set_resource
    @review = Review.find(params[:id])
  end
  
end