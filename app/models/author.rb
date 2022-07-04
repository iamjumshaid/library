# frozen_string_literal: true

class Author < Person
  has_many :books, dependent: :destroy
end
