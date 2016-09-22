Rails.application.routes.draw do
  resource :profile
  get 'profiles/:username', to: 'profiles#show'
  get 'users/show'

  root 'welcome#index'

  match 'auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  match 'auth/failure', to: redirect('/'), via: [:get, :post]
  match 'signout', to: 'sessions#destroy', as: 'signout', via: [:get, :post]

  get "/account", to: 'profiles#new'
end
