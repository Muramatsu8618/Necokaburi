Rails.application.routes.draw do
  root 'pages#index'

  get '/service', to: 'pages#service'

  get  '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'
  delete '/signout', to: 'sessions#destroy'

  get '/users/edit', to: 'users#edit'
  patch '/users/edit', to: 'users#update'

  resources 'users'

  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'

  get '/report', to: 'ratings#show'

end
