# frozen_string_literal: true

class CreateJoinTableCategoriesUsers < ActiveRecord::Migration[7.0]
  def change
    create_join_table :categories, :users do |t|
      # t.index [:category_id, :user_id]
      # t.index [:user_id, :category_id]
    end
  end
end
