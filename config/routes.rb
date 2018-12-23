Rails.application.routes.draw do
  get 'users/show'
　root 'home#index'

  devise_for :users, controllers: { :omniauth_callbacks => "omniauth_callbacks" }

  resources :users, :only => [:show]

end
