Rails.application.routes.draw do

  get 'stories/mypicstories', to: 'stories#mypicstories', as: 'mypicstories'

  resources :stories
  resources :users, only: %i[ new create show ]
  resources :sessions, only: %i[ new create destroy ]
  

  root 'stories#index'
end
