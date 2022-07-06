# frozen_string_literal: true

class Book::BookSuggestionsComponent < ApplicationComponent
  option :books

  def render?
    books.any?
  end
end
