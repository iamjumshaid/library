# frozen_string_literal: true

class Library::IndexComponent::SortButtonComponent < ApplicationComponent
  class_attribute :param_name

  self.param_name = :order

  ACTIVE_VALUE = 'chrono'

  option :order_param

  def active?
    order_param == ACTIVE_VALUE
  end

  def url
    helpers.controller_name == 'library' ? library_index_path : books_path
  end
end
