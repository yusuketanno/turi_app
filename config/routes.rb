Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  root to: "infos#index"
  get 'infos/search1'
  get 'infos/search2'
  resources :users, only: [:edit, :update, :show]
  resources :infos
end
