Rails.application.routes.draw do
  resources :location_results
  resources :results
  resources :locations
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end