Rails.application.routes.draw do
  get 'home/index'
  get 'home/show'
  devise_for :users

  # here products will have 7 restfull crud action includes index show new create edit update destroy and
  # 2 non restfull actions includes users_list and sites_list
  resources :products do
     collection do
       get 'users_list'
     end
     member do 
       get 'sites_list'
     end
  end

  resources :sites
  resources :users
  resources :vehicles
  resources :chairs
  get 'users/index'

  get 'users/show'

  get 'users/new'
  root 'users#index'
  resources :articles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
