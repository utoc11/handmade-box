Rails.application.routes.draw do
  get 'users/show'
  root 'home#index'

  resources :questions, only: %i[show new create edit update] do
    resources :answers, only: %i[show new create edit update]
    resources :likes, only: %i[create destroy], format: :js
  end

  devise_for :users, controllers: { :omniauth_callbacks => "omniauth_callbacks" }

  resources :users, :only => [:show]

end
