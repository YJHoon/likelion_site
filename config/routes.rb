Rails.application.routes.draw do
  root "home#index"
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  
  get 'mypage' => 'users#mypage'
  get '/my_homeworks' => "home#my_homework"

  resources :assignments, only: %i[index show new create] do 
    resources :submissions, only: %i[index new create show edit update] do 
      member do
        get :wish_toggle
      end
    end
  end
  resources :galleries, only: %i[index new create] do
    collection do
      get :tag_page
    end
  end
  resources :recruits, only: %i[index show] do 
    resources :applies do
    end
  end
  resources :comments
  resources :wishes
  resources :lectures, only: %i[index show create]
end


