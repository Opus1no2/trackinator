# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }
  root 'home#index'

  resources :lists do
    resources :list_items
    resources :list_view_settings, only: :update
  end
end
