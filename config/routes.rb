Rails.application.routes.draw do
  resource :voting
  root 'voting#index'
  get '/voting/:id', to: 'voting#show'
  get '/addCandidate', to: 'voting#new', as: 'addCandidate'
  post '/voting', to: 'voting'


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
