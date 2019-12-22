Rails.application.routes.draw do
  get 'news/new'

  get 'sessions/new'

  get 'static_pages/home'
  get '/help', to: 'static_pages#help'
  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'

  get 'users/new'
  get  '/new_user', to: 'users#new'
  get  '/users', to: 'users#index'
  post '/new_user',  to: 'users#create'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :users
  root 'static_pages#home'

end
