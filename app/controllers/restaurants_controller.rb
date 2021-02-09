class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

  def index
    @restaurants = Restaurant.all
  end # render "restaurants/index.html.erb"

  # GET => /restaurants/:id
  # => /restaurants/34
  def show
  end # render "restaurants/show.html.erb"

  def new
    @restaurant = Restaurant.new
  end # render "restaurants/new.html.erb"

  # POST /restaurants
  # params -> {"restaurant"=>{"name"=>"Alicheur", "address"=>"Oberkampf", "rating"=>"3"}}
  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    redirect_to restaurant_path(@restaurant)
  end

  # GET /restaurants/:id/edit
  def edit
  end # render "restaurants/edit.html.erb"

  # PATCH /restaurants/:id
  # params -> {"restaurant"=>{"name"=>"Alicheur", "address"=>"Oberkampf", "rating"=>"3"}}
  def update
    @restaurant.update(restaurant_params)
    redirect_to restaurant_path(@restaurant)
  end

  # DELETE /restaurants/:id
  def destroy
    @restaurant.destroy

    redirect_to restaurants_path
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :rating)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
