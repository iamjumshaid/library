# frozen_string_literal: true

class BooksController < ApplicationController
  def index
    @books = current_user.books.includes(:author, :publisher, :categories).page(params[:page])
    @books = @books.where(categories: { name: params[:category] }) if params[:category]
    @books = @books.joins(:author).where('people.name LIKE ?', "%#{params[:author]}%") if params[:author]
    @books = @books.order(:title) if params[:order]
  end

  def suggestions
    # recommend user books from their pre-liked categories
    # also only the books that user has not bought already
    @books = Book.joins(:categories).where(categories: current_user.categories).where.not(id: current_user.books.ids).sample(4)
    render Book::BookSuggestionsComponent.new(books: @books)
  end
end
