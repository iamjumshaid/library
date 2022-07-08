# frozen_string_literal: true

class Book::ShowComponent::PreviewsComponent < ApplicationComponent
  option :book, model: 'Book'

  def previews
    @previews ||= book.previews
  end
  

  def render?
    previews.any?
  end
end
