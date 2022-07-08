# frozen_string_literal: true

class Book::ShowComponent::PreviewComponent < ApplicationComponent
  option :book, model: 'Book'

  def previews
    @previews ||= book.previews
  end
  

  def render?
    previews.any?
  end
end
