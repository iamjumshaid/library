# frozen_string_literal: true

class Book < ApplicationRecord
  belongs_to :author
  belongs_to :publisher
  has_many :reviews, dependent: :destroy
  has_and_belongs_to_many :categories
  has_and_belongs_to_many :users
end
