# frozen_string_literal: true

class LibraryController < ApplicationController
  def index
    @books = Book.all
  end
end
