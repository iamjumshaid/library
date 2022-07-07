# frozen_string_literal: true

class LibraryController < ApplicationController
  def index
    @books = Book.includes(:author, :publisher, :categories).where.not(id: current_user.books.ids).page(params[:page])

    @books = Book.filter(
      result: @books,
      author: params[:author],
      title: params[:title],
      category: params[:category],
      order: params[:order]
    )
  end
end
