# frozen_string_literal: true

class LibraryController < ApplicationController
  def index
    @books = Book.order(:title).page params[:page]
  end
end
