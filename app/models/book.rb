# frozen_string_literal: true

# == Schema Information
#
# Table name: books
#
#  id           :bigint           not null, primary key
#  title        :string
#  description  :string
#  no_of_pages  :integer
#  author_id    :integer
#  publisher_id :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class Book < ApplicationRecord
  paginates_per 5

  belongs_to :author
  belongs_to :publisher
  has_one_attached :ebook
  has_many :reviews, dependent: :destroy
  has_and_belongs_to_many :categories
  has_and_belongs_to_many :users

  validates :title, presence: true
  validates :no_of_pages, numericality: true
  validates_associated :author, :publisher

  def self.filter(result: nil, author: nil, title: nil, category: nil, order: nil)
    result ||= all
    result = result.joins(:categories).where(categories: { name: category }) if category
    result = result.joins(:author).where('people.name LIKE ?', "%#{author}%") if author
    result = result.where('title LIKE ?', "%#{title}%") if title
    result = result.order(:title) if order

    result
  end
end
