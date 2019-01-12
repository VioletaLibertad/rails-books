Rails.application.routes.draw do
  root 'books#index'

  resources books, only: [:index, :new, :create]
  resources authors, except: [:destroy]
end
