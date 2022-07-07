# frozen_string_literal: true

class Page::MessageComponent < ApplicationComponent
  option :message

  def render?
    message.length.positive?
  end
end
