# frozen_string_literal: true

class LibraryController < ApplicationController
  def index
    @books = current_user.books.includes(:author, :categories).order(:title).page(params[:page])
  end
end
