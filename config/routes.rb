Rails.application.routes.draw do
  resources :maps
  resources :tournaments
  resources :games
  resources :teams
  resources :players, except: [:show]

  root to: 'games#index'
end
