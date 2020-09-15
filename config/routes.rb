Rails.application.routes.draw do
  namespace :api do
    get "/actors/:id" => "actors#show"
    get "/actors" => "actors#index"
    post "/actors" => "actors#create"
    patch "/actors/:id" => "actors#update"
    delete "/actors/:id" => "actors#destroy"
    get "/movies/:id" => "movies#show"
    get "/movies" => "movies#index"
    post "/movies" => "movies#create"
    patch "/movies/:id" => "movies#update"
    delete "/movies/:id" => "movies#destroy"
  end
end
