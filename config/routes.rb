Rails.application.routes.draw do
  namespace :api do
    get "/actor_path" => "actors#find_actor"
    get "/all_movies_path" => "movies#find_all_movies"
    get "/actor_path_url/:title" => "actors#find_actor_url"
    get "/actor_path_query/" => "actors#find_actor_query"
    post "/secure_actor_path/" => "actors#find_actor_secure"
  end
end
