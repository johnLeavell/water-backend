Rails.application.routes.draw do
  resources :location_results
  resources :results
  resources :locations
  root 'welcome#index'
end
