Rails.application.routes.draw do
  get '/movie_index' => 'application#movie'
  get '/new_movie' => 'application#new'
  get '/create_movie' => 'application#create'
  get '/movie/:id' => 'application#show'
end
