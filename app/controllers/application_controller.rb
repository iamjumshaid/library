# frozen_string_literal: true

class ApplicationController < ActionController::Base
  def default_action
    if user_signed_in?
      redirect_to home_index_path
    else
      redirect_to new_user_session_path
    end
  end
end
