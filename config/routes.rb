Rails.application.routes.draw do
  resources :garment_materials
  resources :materials
  resources :garments
  resources :suppliers
  resources :brands
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  # resources :users, only: [:index, :update]
end
