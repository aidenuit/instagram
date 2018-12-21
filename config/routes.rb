Rails.application.routes.draw do
  get 'search' => 'search#index'
  devise_for :users
  root 'posts#index'

  resources :users, only: [:show, :edit, :update]

  resources :posts, only: [:index, :new, :create, :show, :destroy]
end
