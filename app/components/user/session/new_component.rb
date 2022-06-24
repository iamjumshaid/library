# frozen_string_literal: true

class User::Session::NewComponent < ApplicationComponent
  option :user, model: 'User'
  option :devise_mapping
end
