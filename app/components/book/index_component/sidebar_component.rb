# frozen_string_literal: true

class Book::IndexComponent::SidebarComponent < ApplicationComponent
  option :results_count
  option :books

  SEARCH_FILTERS = %i[
    title
    author
    category
  ].freeze

  def categories
    @categories ||= Category.all
  end
end
