Rails.application.routes.draw do
  get "/comics" => "comics#index"
  get "/comics/:id" => "comics#show"


end
