# frozen_string_literal: true

class Book::ShowComponent::ReviewComponent < ApplicationComponent
  option :book, model: 'Book'

  def reviews
    @reviews ||= book.reviews
  end
  

  def render?
    reviews.any?
  end
end
