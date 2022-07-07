# frozen_string_literal: true

class Book::IndexComponent::FilterComponent::CategoryComponent < Book::IndexComponent::FilterComponent::BaseComponent
  option :categories

  self.param_name = :category

  EMPTY_STATE = 'Select any Category'
  
  def selected_category
    params[:category] || EMPTY_STATE
  end

  def active_category?(category)
    selected_category == category
  end
end
