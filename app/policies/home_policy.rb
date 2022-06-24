class HomePolicy < Struct.new(:user, :page)
  def index?
    user.present?
  end
end