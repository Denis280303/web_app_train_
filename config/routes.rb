# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users

  resources :tickets, only: [:index, :destroy]

  namespace :admin do
    resources :trains do
      resources :wagons, shallow: true
    end

    resources :tickets, only: [:show, :destroy, :index, :edit, :update]

    resources :railway_stations do
      patch :update_time, on: :member
      patch :update_position, on: :member
    end
    resources :routes
  end

  resources :trains, only: [] do
    resources :wagons, shallow: true
    resources :tickets, only: [:new, :create, :destroy]
  end

 
 resources :railway_stations, only: [:index]
 resources :routes 

  resources :search, only: [:index, :show, :new, :edit] do 
    post '/', to: 'search#search'
  end

  

  root 'search#index'
  get 'wellcome/index'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
