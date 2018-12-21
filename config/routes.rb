Rails.application.routes.draw do
  devise_for :users, controllers: { resgistrations: 'resgistrations' }
  root 'posts#index'

  resources :users, only: [:show, :edit, :update]

  resources :posts, only: [:index, :new, :create]
end
