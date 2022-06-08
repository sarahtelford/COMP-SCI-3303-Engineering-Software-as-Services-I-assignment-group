Rails.application.routes.draw do
  resource :candidates
  root 'candidates#index'
  get '/aboveLine' => 'candidates#aboveLine', as: :above_line
  get '/voting/:id' => 'candidates#show', as: :show
  get '/belowLine' => 'candidates#belowLine', as: :below_line
  get '/addCandidates' => 'candidates#new'


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
