# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    render Home::IndexComponent.new
  end
end
