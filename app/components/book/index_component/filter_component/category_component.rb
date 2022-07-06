# frozen_string_literal: true

class Book::IndexComponent::FilterComponent::CategoryComponent < ApplicationComponent
  option :categories

  EMPTY_STATE = 'Select any Category'

  def menu_items
    categories.pluck(:name).unshift(EMPTY_STATE)
  end

  def selected_category
    params[:category] || EMPTY_STATE
  end

  def active_category?(category)
    selected_category == category
  end

  def url
    helpers.controller_name == 'library' ? library_index_path : books_path
  end
end
