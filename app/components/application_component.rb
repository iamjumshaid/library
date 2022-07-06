# frozen_string_literal: true

class ApplicationComponent < ViewComponent::Base
  extend Dry::Initializer
  include Turbo::FramesHelper

  # Identifier compatible to Stimulus controller identifier
  def identifier
    @identifier ||= self.class.name.delete_suffix('Component').underscore.split('/').join('--').dasherize
  end

  # Generic helpers to generate heroicons html
  def solid_icon(name, **options)
    helpers.heroicon name, variant: :solid, options: options
  end

  def outline_icon(name, **options)
    helpers.heroicon name, variant: :outline, options: options
  end

  # Form submission url for my books and library page
  def url
    helpers.controller_name == 'library' ? library_index_path : books_path
  end
end
