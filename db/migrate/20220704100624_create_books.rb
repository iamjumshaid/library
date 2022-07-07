# frozen_string_literal: true

class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title, null: false
      t.string :description, null: false
      t.integer :no_of_pages, null: false
      t.integer :author_id, foreign_key: true
      t.integer :publisher_id, foreign_key: true
      t.timestamps
    end
  end
end
