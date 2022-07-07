# frozen_string_literal: true

class Book::BookComponent < ApplicationComponent
  option :book, model: 'Book'

  def readable?
    helpers.controller_name == 'books' && book.ebook.attached?
  end
end
