Rails.application.routes.draw do
  get 'login' ,to: redirect('/auth/github'), as: 'login'
  get 'logout' ,to: 'sessions#destroy', as: 'logout'
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'home', to: 'home#index'
  get 'me', to: 'me#show', as: 'me'
  root to: "home#index"
end
