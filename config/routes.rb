Rails.application.routes.draw do
  resources :photos
  devise_for :admins
  devise_for :users

  root to: "photos#index"

  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
    get 'logout',to: 'devise/sessions#destroy'
    get 'signup',to: 'devise/registrations#new'
  end

end
