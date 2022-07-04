# frozen_string_literal: true

class Publisher < Person
  has_many :books, dependent: :destroy
end
