class ReviewsController < ApplicationController
  def create
    @book = Book.find(params[:book_id])
    @review = @book.reviews.build(permitted_attributes(Review))
    @review.user = current_user


    flash[:error] = @review.errors.full_messages unless @review.save
    
    redirect_to book_path(@book)
  end  
end