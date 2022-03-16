Rails.application.routes.draw do

  get '/search', to: 'transactions#search'
  post '/search', to: 'transactions#search'

  resources :goals
  resources :transactions

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
