Rails.application.routes.draw do
  root 'pages#index'

  get '/sign_in', to: 'sessions#new'
  post '/sign_in', to: 'sessions#create'
  delete '/sign_out', to: 'sessions#destroy'

  get '/account_create', to: 'users#new'
  post '/account_create', to: 'users#create'

  resources 'users'
end
