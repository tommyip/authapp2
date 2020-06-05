Rails.application.routes.draw do
  devise_for :users
  
  get 'app/index'
  root 'home#index'
end
