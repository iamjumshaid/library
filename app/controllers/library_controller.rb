# frozen_string_literal: true

class LibraryController < ApplicationController
  def index
    @books = Book.includes(:author, :categories).order(:title).page(params[:page])
  end
end
