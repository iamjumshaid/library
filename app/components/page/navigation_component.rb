# frozen_string_literal: true

class Page::NavigationComponent < ApplicationComponent
  def render?
    !helpers.devise_controller?
  end
end
