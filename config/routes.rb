Rails.application.routes.draw do
  get 'home/index'
  root to:'home#index'
  resources :interets
  resources :competences
  resources :contacts
  resources :certificats
  resources :employments
  devise_for :admins
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
