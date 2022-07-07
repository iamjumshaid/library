# frozen_string_literal: true

class Book::ShowComponent < ApplicationComponent
  option :book, model: 'Book'

  def average_rating
    @average_rating ||= book.reviews.average(:rating).to_i
  end
  
end
