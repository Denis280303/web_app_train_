Rails.application.routes.draw do
  resources :trains
  resources :routes
  resources :railway_stations
  get 'wellcome/index'
  root 'wellcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
