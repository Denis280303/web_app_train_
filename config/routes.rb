# frozen_string_literal: true

Rails.application.routes.draw do
  resources :trains do
    resources :wagons, shallow: true
  end
  resources :routes
  resources :railway_stations do
    patch :update_time, on: :member
    patch :update_position, on: :member

  end

  get 'wellcome/index'
  root 'wellcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
