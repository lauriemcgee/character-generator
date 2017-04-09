Rails.application.routes.draw do
  get "/signup" => "users#new"
  post "/users" => "users#create"
  

  get "/" => "sessions#new"
  get "/login" => "sessions#new"
  post "/login" => "sessionss#create"
  get "/logout" => "sessions#destroy"
 

end
