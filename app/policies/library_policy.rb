# frozen_string_literal: true

# Policy for a non-corresponding model
LibraryPolicy = Struct.new(:user, :page) do
  def index?
    user.present?
  end
end
