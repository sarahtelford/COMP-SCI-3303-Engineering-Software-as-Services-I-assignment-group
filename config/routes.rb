Rails.application.routes.draw do
  resource :candidates

  root 'candidates#index'
  get '/voting/:id' => 'candidates#show', as: :show
  get '/public/aboveLine' => 'candidates#aboveLine', as: :above_line
  get '/public/belowLine' => 'candidates#belowLine', as: :below_line
  get '/admin/addCandidate', to: 'candidates#new'

  get '/public', to: 'candidates#public', as: :public
  get '/admin', to: 'candidates#admin', as: :admin

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
