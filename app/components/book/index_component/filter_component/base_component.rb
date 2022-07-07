# frozen_string_literal: true

class Book::IndexComponent::FilterComponent::BaseComponent < ApplicationComponent
  class_attribute :param_name

  self.param_name = nil

  SEARCH_PARAMS = %i[
    title
    author
    category
  ].freeze

  # Removing the applied filter from the search params
  # and appending the rest of the filters in hidden field
  # to enable applying multiple filters at once
  def search_params
    @search_params ||= SEARCH_PARAMS - [param_name]
  end
end
