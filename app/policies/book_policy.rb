# frozen_string_literal: true

class BookPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.includes(:author, :publisher, :categories).joins(:users).where(users: [user])
    end
  end

  def index?
    user.present?
  end

  def show?
    user.present?
  end

  def buy_now?
    user.present?
  end

  def suggestions?
    user.present?
  end
end
