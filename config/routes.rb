Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users
  get 'cards', action: :cards, controller: 'home'
  get 'invoices', action: :invoices, controller: 'home'

  root 'home#index'
end
