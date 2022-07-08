# frozen_string_literal: true

class Review::ReviewComponent < ApplicationComponent
  option :review, model: 'Review'

  def user_name(email)
    email.split('@').first.titleize
  end
end
