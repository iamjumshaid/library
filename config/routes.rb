# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'application#default_action'

  devise_scope :user do
    # Redirests signing out users back to sign-in
    get 'users', to: 'devise/sessions#new'
  end

  devise_for :users
  resources :library
  resources :books do
    collection do
      get :suggestions
    end
  end

  post '/book/:id/buy', to: 'books#buy_now', as: 'buy_book'
end
