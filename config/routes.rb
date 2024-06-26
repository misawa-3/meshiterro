Rails.application.routes.draw do

  resources :users, only: [:show, :edit, :update]
  resources :post_images, only: [:new, :create, :index, :show, :destroy]
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'homes#top'

  get "/homes/about" => "homes#about", as: "about"

end
