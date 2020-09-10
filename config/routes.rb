Rails.application.routes.draw do
  namespace :api do
    get "/actor_path" => "actors#find_actor"
  end
end
