Rails.application.routes.draw do
  devise_for :admins
  devise_for :users
  resources :posts

  root to: "posts#index"
end
