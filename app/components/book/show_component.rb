# frozen_string_literal: true

class Book::ShowComponent < ApplicationComponent
  option :book, model: 'Book'
  option :user, model: 'User'

  def average_rating
    @average_rating ||= book.reviews.average(:rating).to_i
  end

  def purchaseable?
    user.books.exclude? book
  end
end
