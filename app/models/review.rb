# frozen_string_literal: true

# == Schema Information
#
# Table name: reviews
#
#  id         :bigint           not null, primary key
#  user_id    :bigint           not null
#  book_id    :bigint           not null
#  rating     :integer
#  comment    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Review < ApplicationRecord
  belongs_to :user
  belongs_to :book

  validates :rating, numericality: { in: 1..5 }, presence: true
  validates :user_id, uniqueness: { scope: :book_id, message: 'You can review a book once only.' }
  validates_associated :user, :book
end
