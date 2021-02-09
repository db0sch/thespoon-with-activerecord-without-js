Rails.application.routes.draw do
  # CRUD
  # Create, Read, Update, Delete

  # verb "path", to: "controller_name#action/method"

  # 7x CRUD

  # See all the restaurants
  # get "restaurants", to: "restaurants#index"
  # # Create a new restaurant
  # # => 2 steps
  # get "restaurants/new", to: "restaurants#new", as: :new_restaurant # to get the form
  # post "restaurants", to: "restaurants#create"
  # # See details of one restaurant
  # get "restaurants/:id", to: "restaurants#show", as: :restaurant
  # # "restaurants/34" -> params[:id] => 34
  # # Update an existing restaurant
  # # => 2 steps
  # get "restaurants/:id/edit", to: "restaurants#edit", as: :edit_restaurant
  # patch "restaurants/:id", to: "restaurants#update"
  # # Destroy a restaurant
  # delete "restaurants/:id", to: "restaurants#destroy"
  resources :restaurants
end
