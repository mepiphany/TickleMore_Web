class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to new_restaurant_path, notice: "Your Restaurant has been added"
    else
      flash[:alert] = "Failed to add restaurant"
      render :new
    end
  end

  private

  def restaurant_params
    params.require(:restaurant).permit([:title, :description, :image, :cash_value])
  end
end
