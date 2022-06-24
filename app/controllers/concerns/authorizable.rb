module Authorizable
  extend ActiveSupport::Concern

  include Pundit::Authorization

  included do
    before_action :skip_authorization, :skip_policy_scope, if: :devise_controller?
    before_action :authenticate_user!
    after_action :verify_authorized
    rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  end

  protected 
  
  def user_not_authorized
    flash[:alert] = 'You are not authorized to perform this action.'
    redirect_to(request.referrer || root_path)
  end
end