class Admin::RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

  def show
  end

  def index
    @restaurants = Restaurant.all
  end

  def edit
  end

  def update
    @restaurant.update(restaurant_params)

    redirect_to admin_restaurants_path
  end

  def destroy
    @restaurant.destroy

    redirect_to admin_restaurants_path
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone, :category)
  end

end

