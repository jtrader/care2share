Rails.application.routes.draw do
  resources :beds
  resources :lengths
  resources :years
  resources :motorhomes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'motorhomes#index'
end
