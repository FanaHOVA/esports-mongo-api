Rails.application.routes.draw do
  resources :players, except: [:show]

  root to: 'players#index'
end
