# frozen_string_literal: true

class Page::CardComponent < ApplicationComponent
  renders_one :title
  renders_one :header
  renders_one :body
  renders_many :items
  renders_one :item_template
  renders_one :footer
  renders_one :sidebar
end
