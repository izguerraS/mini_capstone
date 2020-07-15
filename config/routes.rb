Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # # get "/photos" => "photos#index"

  # # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/mini_capstone" => "products#name"
  #   #get "/names" => "products#name"

    namespace :api do

    get "/products" => "products#index"
    # get "/products/:id" => "products#show"
    get "products/:Id" => "products#show"
    post "/products" => "products#create"
    patch "/products/:id" => "products#update"
    delete "/products/:id" => "products#destroy"


    post "/users" => "users#create"


    post "/sessions" => "sessions#create"


   



 
  end
end



