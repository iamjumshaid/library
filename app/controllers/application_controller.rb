# frozen_string_literal: true

class ApplicationController < ActionController::Base
  include Authorizable
  helper_method :on_member?

  before_action :set_resource, if: :on_member?
  before_action :authorize_policy, unless: :devise_controller?

  def default_action
    redirect_to resolve_root_url
  end

  # check member methods [:show, :update, :destroy]
  def on_member?
    params[:id].present?
  end

  protected

  # generic method for pundit authorization
  def authorize_policy
    if on_member?
      authorize(set_resource)
    elsif %w[application home].include?(controller_name) # no model correspondance
      authorize(policy_name, policy_action)
    else
      authorize(controller_name.classify.constantize) # collection routes
    end
  end

  private

  def resolve_root_url
    if user_signed_in?
      home_index_path
    else
      new_user_session_path
    end
  end

  def policy_name
    controller_name.to_sym
  end

  def policy_action
    "#{action_name}?".to_sym
  end
end
