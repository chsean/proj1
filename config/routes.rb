Rails.application.routes.draw do
  devise_for :trainers
  root to: "home#index"

  patch '/trainers/:id', to: 'pokemons#damage', as: 'damage' #had to put this before resources:trainers?

  resources :trainers
  patch '/:id', to: 'pokemons#capture', as: 'capture'
  get '/pokemons', to: 'pokemons#new', as: 'pokemon'
  post '/pokemons', to: 'pokemons#create'
end
