# frozen_string_literal: true

class LibraryController < ApplicationController
  def index
    render Library::IndexComponent.new
  end
end
