# frozen_string_literal: true

Rails.application.routes.draw do
  get 'nasa_picture/index'
  resources :moons
  resources :planets
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'planets#index'
end
