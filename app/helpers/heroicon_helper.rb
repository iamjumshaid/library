# frozen_string_literal: true

module HeroiconHelper
  include Heroicon::Engine.helpers
  def solid_icon(name, **options)
    heroicon name, variant: :solid, options: options
  end
end
