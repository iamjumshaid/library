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
require 'test_helper'

class BookTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
