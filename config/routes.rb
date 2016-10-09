Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  devise_for :users, controllers: { sessions: "users/sessions", registrations: 'users/registrations', confirmations: 'users/confirmations', passwords: 'users/passwords' }

  resources :profiles, only: [:index, :show]

  resources :statuses, only: [:create]


end
