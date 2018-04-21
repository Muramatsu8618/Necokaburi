Rails.application.routes.draw do
  root 'pages#index'

  get '/service', to: 'pages#service'

  get  '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'
  delete '/signout', to: 'sessions#destroy'

  get '/users/edit', to: 'users#edit'
  patch '/users/edit', to: 'users#update'

  resources 'users'

  get '/accountcreate', to: 'users#new'
  post '/accountcreate', to: 'users#create'

  get '/report', to: 'ratings#show'

end
