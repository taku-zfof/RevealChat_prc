Rails.application.routes.draw do
  root to: 'groups#index'

  devise_for :users

  resources :groups
  resources :messages,only: [:create]

  resources :user_to_groups, only:[:create]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
