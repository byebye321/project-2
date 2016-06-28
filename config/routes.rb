Rails.application.routes.draw do
  #get 'session/new'

#  get 'session/create'

  #get 'session/destroy'
  root 'posts#index', as: 'home'
  # get 'home', to: 'posts#index', as: 'posts'


  get 'sign_in', to: 'sessions#new'
  get 'sign_up', to: 'users#new'
  delete 'sign_out', to: 'sessions#destroy'
  resources :sessions, only: [:create]

  # resources :comments

  resources :users do
    resources :posts
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
