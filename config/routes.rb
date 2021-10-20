Rails.application.routes.draw do

  root 'posts#index'
  get 'posts/top' => 'posts#top'

  devise_for :users
  resources :users, only: [:show] 

  resources :posts do
    resources :likes, only: [:create, :destroy]
    resources :comments, only: [:create]
  end
 
end
