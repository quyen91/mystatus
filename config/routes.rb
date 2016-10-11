Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'profiles#index'
  devise_for :users, controllers: { sessions: "users/sessions", registrations: 'users/registrations',
                                   confirmations: 'users/confirmations', passwords: 'users/passwords',
                                  }

   match '/users/:id/finish_signup' => 'users#finish_signup', via: [:get, :patch], :as => :finish_signup


  resources :profiles, only: [:index, :show] do
    member do
      get :following, :followers
    end

  end
  resources :comments

  resources :statuses, only: [:create]

  resources :relationships, only: [:create, :destroy]

end
