Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  
  resources :agents, only: [:index, :new, :create, :show]
  resources :properties
  get 'search', to: 'properties#search', as: :search_properties

  get 'contact', to: 'static_pages#contact', as: :contact
  get 'about', to: 'static_pages#about', as: :about

  resources :users, only: [:show]

  namespace :admin do
    resources :properties, except: [:show]
    resources :users, except: [:show]
    get 'dashboard', to: 'dashboard#index'
  end
end
