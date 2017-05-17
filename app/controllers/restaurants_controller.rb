class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy, :chef]


 def index
  @restaurants = Restaurant.all
end

def show
end

def new
  @restaurant = Restaurant.new(restaurant_params)
end

def edit
end

def create
 @restaurant = Restaurant.new(restaurant_params)
 @restaurant.save
 redirect_to restaurant_path(@restaurant)
end

def destroy
  @restaurant.destroy
  redirect_to restaurants_path
end

def top
  @restaurants = Restaurant.where(stars: 3)
end

def chef
end

private

def restaurant_params
  params.require(:restaurant).permit(:name, :address, :description, :stars)
end

def set_restaurant
  @restaurant = Restaurant.find(params[:id])
end

end
