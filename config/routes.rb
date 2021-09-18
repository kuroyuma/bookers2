Rails.application.routes.draw do
  get 'books/index'
  get 'books/show'
  get 'books/edit'
  get 'users/show'
  root to: 'homes#top'
  devise_for :users
  resources :post_images, only: [:new, :create, :index, :show, :destroy]do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
  resources :users, only: [:show]
 
end