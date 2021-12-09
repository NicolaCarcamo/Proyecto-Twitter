Rails.application.routes.draw do
  get 'home/index'

  devise_for :users, controllers: { sessions: 'users/sessions' }
  
  post 'tweet/:id', to: 'tweets#rt', as: 'rtbutton'
  
  resources :tweets, only: [:create, :show]

  post 'like', to: 'likes#create', as: 'likebutton'
  delete 'like', to: 'likes#destroy', as: 'unlikebutton'

  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
