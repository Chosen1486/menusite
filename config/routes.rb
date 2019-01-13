Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  namespace :admin do #網頁後台路由
    resources :restaurants
    resources :categories
    root "restaurants#index" 
  end

  resources :categories, only: :show
  resources :restaurants, only: [:index, :show, :edit, :update]
  root "restaurants#index" #網頁前台首頁

  resources :restaurants, only: [:index, :show] do
    resources :comments, only: [:create, :destroy]
  end
  
end
