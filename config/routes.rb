
Rails.application.routes.draw do

  root 'pages#index'
  get 'about', to: 'pages#about'
  get 'signup', to: 'users#new'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  resources :users, except: [:new]
  get 'search', to: 'articles#search'
  resources :articles
  resources :categories, except: [:destroy]

end