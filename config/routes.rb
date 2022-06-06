Rails.application.routes.draw do
  resource :candidates
  root 'candidates#index'
  # get '/addCandidate', to: 'candidates#new', as: 'addCandidate'


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
