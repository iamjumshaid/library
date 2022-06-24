# frozen_string_literal: true

class Page::FlashComponent < ApplicationComponent
  option :flash # Assume to be a ActionDispatch::Flash::FlashHash

  def initialize(...)
    super

    # Some flash messages are a String
    # Normalize flash data to be a Hash
    @flash = @flash.to_h do |type, data|
      data = { title: data } unless data.is_a?(Hash)

      [type, data]
    end
  end

  def render?
    !flash.empty?
  end
end
