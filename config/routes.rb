Rails.application.routes.draw do
  devise_for :admins
  devise_for :users

  root to: 'albums#index'

  resources :albums do
    resources :photos
    get 'download', to: 'albums#download'
  end

  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
    get 'logout', to: 'devise/sessions#destroy'
    get 'signup', to: 'devise/registrations#new'
  end
end
