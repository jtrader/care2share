Rails.application.routes.draw do
  resources :listings
  resources :profiles
  devise_for :users
  resources :motorhomes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
end
