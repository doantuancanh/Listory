Rails.application.routes.draw do
  resources :stories do
  	resources :chaps
  end
  resources :stories do 
  	resources :comments
  end
  devise_for :users
  resources :users, only: [:show]
  root "stories#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
