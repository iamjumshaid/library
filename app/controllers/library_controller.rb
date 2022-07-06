# frozen_string_literal: true

class LibraryController < ApplicationController
  def index
    @books = Book.includes(:author, :publisher, :categories).page(params[:page])
    @books = @books.includes(:categories).where(categories: { name: params[:category] }) if params[:category]
    @books = @books.order(:title) if params[:order]
  end
end
