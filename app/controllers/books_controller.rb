# frozen_string_literal: true

class BooksController < ApplicationController
  def index
    @books = Book.filter(
      result: policy_scope(Book),
      author: params[:author],
      title: params[:title],
      category: params[:category],
      order: params[:order]
    ).page(params[:page])
  end

  def show
    render Book::ShowComponent.new(book: @book, user: current_user)
  end

  def suggestions
    # recommend user books from their pre-liked categories
    # also only the books that user has not bought already
    @books = Book.joins(:categories).where(categories: current_user.categories).where.not(id: current_user.books.ids).sample(4)
    render Book::BookSuggestionsComponent.new(books: @books)
  end

  def buy_now
    flash[:success] = 'Book added to your owned books!'
    current_user.books << @book

    redirect_to books_path
  end

  protected

  def set_resource
    @book ||= Book.find(params[:id])
  end
end
