Rails.application.routes.draw do
  root "home#index"
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  resources :assignments do 
    resources :submissions
  end
  resources :studies
  resources :galleries
  resources :comments
  resources :wishes
end
