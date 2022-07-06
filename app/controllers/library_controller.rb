# frozen_string_literal: true

class LibraryController < ApplicationController
  def index
    @books = Book.includes(:author, :categories).page(params[:page])

    @books = @books.order(:title) if params[:order]
  end
end
