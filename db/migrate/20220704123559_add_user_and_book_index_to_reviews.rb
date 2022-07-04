# frozen_string_literal: true

class AddUserAndBookIndexToReviews < ActiveRecord::Migration[7.0]
  def change
    add_index :reviews, %i[user_id book_id], unique: true
  end
end
