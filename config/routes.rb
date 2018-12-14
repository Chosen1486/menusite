Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  namespace :admin do #網頁後台路由
    resources :restaurants
    resources :categories
    root "restaurants#index" 
  end

  resources :restaurants, only: [:index, :show]
  root "restaurants#index" #網頁前台首頁
  
end
