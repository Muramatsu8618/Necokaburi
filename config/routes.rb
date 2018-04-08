Rails.application.routes.draw do
  root 'pages#index'
  get 'users/new'
end
