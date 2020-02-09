Rails.application.routes.draw do
  root "home#index"
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  
  get '/mypage' => 'users#mypage'
  get '/my_homeworks' => "home#my_homework"

  resources :assignments do 
    resources :submissions do 
      member do
        get :wish_toggle
      end
    end
  end
  resources :galleries do
    collection do
      get :tag_page
    end
  end
  resources :comments
  resources :wishes
  resources :lectures
end


