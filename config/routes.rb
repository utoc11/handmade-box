Rails.application.routes.draw do
  get 'users/show'
  devise_for :users, controllers: { :omniauth_callbacks => "omniauth_callbacks" }
  root 'home#index'

  resources :users, :only => [:show]

end
