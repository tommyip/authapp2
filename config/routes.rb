Rails.application.routes.draw do
  devise_for :users

  namespace :api, defaults: { format: 'json' } do
    mount_devise_token_auth_for 'User', at: 'auth'

    resources :items, only: [:index]
  end

  get 'app/index'
  root 'home#index'
end
