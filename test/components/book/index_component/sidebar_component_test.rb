# frozen_string_literal: true

require 'test_helper'

module Book
  module IndexComponent
    class SidebarComponentTest < ViewComponent::TestCase
      def test_component_renders_something_useful
        # assert_equal(
        #   %(<span>Hello, components!</span>),
        #   render_inline(Book::IndexComponent::SidebarComponent.new(message: "Hello, components!")).css("span").to_html
        # )
      end
    end
  end
end
