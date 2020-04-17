Rails.application.routes.draw do
  root "home#index"
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    # registrations: 'users/registrations'
  }, :skip => 'registration'
    devise_scope :user do
      get "/users/registration/edit", :to => "devise/registrations#edit",   :as => 'edit_user_registration'
      put "/users/registration",        :to => "devise/registrations#update", :as => 'user_registration'
    end

  get "test_exception_notifier" => "application#test_exception_notifier"
  get 'mypage' => 'users#mypage'
  get '/my_homeworks' => "home#my_homework"

  match 'blobs/:signed_id/*filename', to: 'blobs#show', via: [:get, :post]

  resources :assignments, only: %i[index show] do 
    resources :submissions do 
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
      member do
        get :check_apply
      end
    end
  end
  resources :comments
  resources :wishes
  resources :lectures, only: %i[index show]
end


