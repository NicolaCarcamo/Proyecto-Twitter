Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'home/index'
  root 'home#index'

  devise_for :users, controllers: { sessions: 'users/sessions' }
  
  post 'tweet/:id', to: 'tweets#rt', as: 'rtbutton'
  
  resources :tweets, only: [:create, :show]

  post 'like', to: 'likes#create', as: 'likebutton'
  delete 'like', to: 'likes#destroy', as: 'unlikebutton'

  get 'friends', to: 'friends#friendlist', as: 'friendlist' 
  post 'friend', to: 'friends#create', as: 'friendbutton'
  delete 'friend', to: 'friends#destroy', as: 'unfriendbutton'

  get 'search', to: 'tweets#search'

  get '/tweets/hashtag/:name', to: 'tweets#hashtags'

  mount API::Base, at: "/api"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
