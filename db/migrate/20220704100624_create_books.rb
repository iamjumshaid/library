# frozen_string_literal: true

class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :description
      t.integer :no_of_pages
      t.integer :author_id, foreign_key: true
      t.integer :publisher_id, foreign_key: true
      t.timestamps
    end
  end
end
