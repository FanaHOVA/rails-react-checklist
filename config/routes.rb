Rails.application.routes.draw do
  get 'users_items/:id', to: 'user_items#show'
  devise_scope :user do
    get '/login' => 'devise/sessions#new'
    get '/logout' => 'devise/sessions#destroy'
  end

  devise_for :users

  resources :collections

  resources :items

  get 'dashboard', to: 'items#dashboard'

  root 'collections#index'

end
