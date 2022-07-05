# frozen_string_literal: true
 
# Policy for a non-corresponding model
class LibraryPolicy < Struct.new(:user, :page)
  def index?
    user.present?
  end
end