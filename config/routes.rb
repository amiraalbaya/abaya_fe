Rails.application.routes.draw do
  resources :histories
  resources :arrived_qatars
  resources :transits
  resources :arriveds
  resources :mail_items
  resources :locations
  resources :users
      get :be_admin, on: :member
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
