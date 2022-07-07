# frozen_string_literal: true

class LibraryController < ApplicationController
  def index
    @books = Book.includes(:author, :publisher, :categories).page(params[:page])
    @books = @books.where(categories: { name: params[:category] }) if params[:category]
    @books = @books.joins(:author).where('people.name LIKE ?', "%#{params[:author]}.%") if params[:author]
    @books = @books.where('title LIKE ?', "%#{params[:title]}%") if params[:title]
    @books = @books.order(:title) if params[:order]
  end
end
