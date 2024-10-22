Rails.application.routes.draw do
  root 'home#index'
  
  resources :agents, only: [:index, :new, :create, :show]
  resources :properties, only: [:index, :new, :create, :show]
  get 'search', to: 'properties#search', as: :search_properties

  get 'contact', to: 'static_pages#contact', as: :contact
  get 'about', to: 'static_pages#about', as: :about
end
