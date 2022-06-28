# frozen_string_literal: true

HomePolicy = Struct.new(:user, :page) do
  def index?
    user.present?
  end
end
