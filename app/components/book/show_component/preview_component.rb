# frozen_string_literal: true

class Book::ShowComponent::PreviewComponent < ApplicationComponent
  option :book, model: 'Book'

  def render?
    book.previews.any?
  end
end
