Rails.application.routes.draw do
  get 'faq', to: 'static_pages#faq'

  get 'pricing', to: 'static_pages#pricing'

  get 'settings', to: 'static_pages#settings'
  get 'manage_users', to: 'static_pages#manage_users'

  resources :posts

  devise_for :users, :path_prefix => 'd'
  resources :users

  root to: 'albums#index'

  resources :albums do
    resources :photos
    get 'download', to: 'albums#download'
  end

  resources :posts

  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
    get 'logout', to: 'devise/sessions#destroy'
    get 'signup', to: 'devise/registrations#new'
  end

  resources 'contacts', only: %i[new create], path_names: { new: '' }
  mount LetterOpenerWeb::Engine, at: '/letter_opener' if Rails.env.development?
end
