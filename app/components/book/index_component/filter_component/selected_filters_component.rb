# frozen_string_literal: true

class Book::IndexComponent::FilterComponent::SelectedFiltersComponent < ApplicationComponent
  option :filter

  def render?
    params[filter]
  end

  # Removing the applied filter from the search_params
  # and adding the remaining one to the form of the applied filter
  # this will help to remove only the filter that is applied
  def search_params
    @search_params ||= Book::IndexComponent::FilterComponent::BaseComponent::SEARCH_PARAMS - [filter]
  end
end
