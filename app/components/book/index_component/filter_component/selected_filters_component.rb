# frozen_string_literal: true

class Book::IndexComponent::FilterComponent::SelectedFiltersComponent < ApplicationComponent
  option :filter

  def render?
    params[filter]
  end

  def search_params
    @search_params ||= Book::IndexComponent::FilterComponent::BaseComponent::SEARCH_PARAMS - [filter]
  end
  
end
