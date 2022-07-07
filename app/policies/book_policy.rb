# frozen_string_literal: true

class BookPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
  end

  def index?
    user.present?
  end

  def show?
    user.present?
  end

  def suggestions?
    user.present?
  end
end
