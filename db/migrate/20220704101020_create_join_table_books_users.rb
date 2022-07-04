# frozen_string_literal: true

class CreateJoinTableBooksUsers < ActiveRecord::Migration[7.0]
  def change
    create_join_table :books, :users do |t|
      # t.index [:book_id, :user_id]
      # t.index [:user_id, :book_id]
    end
  end
end
