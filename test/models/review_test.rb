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
require 'test_helper'

class ReviewTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
