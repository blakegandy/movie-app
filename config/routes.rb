Rails.application.routes.draw do
  namespace :api do
    get "/actor_path" => "actors#find_actor"
    get "/all_movies_path" => "movies#find_all_movies"
    get "/movie_path/:title" => "movies#find_movie"
  end
end
