Rails.application.routes.draw do
  resources :stories
  resources :users, only: %i[ new create show ]
  resources :sessions, only: %i[ new create destroy ]

  root 'stories#index'
end
