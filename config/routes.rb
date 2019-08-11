Rails.application.routes.draw do
  resources :claims
  resources :rreplies
  resources :creplies
  resources :reviews
  resources :comments
  resources :listings
  resources :profiles
  devise_for :users
  resources :motorhomes
  resources :charges
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"

  get '/search_results' => 'listings#search'
end
