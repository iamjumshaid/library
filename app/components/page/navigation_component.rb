# frozen_string_literal: true

class Page::NavigationComponent < ApplicationComponent
  def render?
    !helpers.devise_controller?
  end

  def menu_items
    @menu_items ||= [
      { text: 'Library', url: library_index_path, classes: nav_item_classes('library') }, 
      { text: 'My Books', url: '#', classes: nav_item_classes(controller) } 
    ]
  end

  def nav_item_classes(controller)
    controller == helpers.controller_name ? 'bg-gray-900 text-white' : 'text-gray-300 hover:bg-gray-700 hover:text-white'
  end
  
end
