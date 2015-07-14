Rails.application.routes.draw do

  root 'movies#index'

  get '/movies/:id' => 'movies#show'
  get '/movies/new' => 'movies#new'
  get '/movies/create' => 'movies#create'
  get '/movies' => 'movies#index'
  get '/movies/:id/delete' => 'movies#destroy'
  get '/movies/:id/edit' => 'movies#index'
  get '/movies/:id/update' => 'movies#index'


end
