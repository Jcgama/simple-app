Rails.application.routes.draw do
  
  

  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  
  devise_scope :user do
    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
    authenticated do
      root 'users#show', as: :authenticated_root
    end
  end
  
  resources :lists
  
end
