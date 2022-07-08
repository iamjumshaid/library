# frozen_string_literal: true

class ReviewPolicy < ApplicationPolicy
  def create?
    user.present?
  end

   def permitted_attributes
    %i[rating comment]
  end
end
