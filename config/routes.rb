# frozen_string_literal: true

Rails.application.routes.draw do
  resources :trains do
    resources :wagons, shallow: true
    resources :tickets, only: [:new, :create]
  end
  resources :tickets, only: [:index]
  resources :routes
  resources :railway_stations do
    patch :update_time, on: :member
    patch :update_position, on: :member
  end


  resources :search, only: [:index, :show, :new, :edit] do 
    post '/', to: 'search#search'
  end

  root 'wellcome#index'
  get 'wellcome/index'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
