Rails.application.routes.draw do

  root 'movies#index'

  get '/directors' => 'directors#index'
  get '/directors/:id' => 'directors#show'

  # This is the Golden 7 for Movies
  get '/movies' => 'movies#index'
  get '/movies/new' => 'movies#new'
  post '/movies' => 'movies#create'

  get '/movies/:id' => 'movies#show'
  get '/movies/:id/edit' => 'movies#edit'
  patch '/movies/:id' => 'movies#update'

  delete '/movies/:id' => 'movies#destroy'

end
