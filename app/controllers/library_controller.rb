# frozen_string_literal: true

class LibraryController < ApplicationController
  def index
    @books = Book.includes(:author, :publisher, :categories).where.not(id: current_user.books.ids).page(params[:page])
    @books = @books.where(categories: { name: params[:category] }) if params[:category]
    @books = @books.joins(:author).where('lower(people.name) ILIKE ?', "%#{params[:author].downcase}.%") if params[:author]
    @books = @books.where('lower(title) ILIKE ?', "%#{params[:title].downcase}%") if params[:title]
    @books = @books.order(:title) if params[:order]
  end
end
