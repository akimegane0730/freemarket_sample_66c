Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "products#index"
  get 'users/logout' => 'users#logout'
  get 'users/cardregister' => 'users#cardregister'
  resources :products, only: [:index, :new, :create, :show]
  resources :users, only: [:index, :show, :edit]
end
