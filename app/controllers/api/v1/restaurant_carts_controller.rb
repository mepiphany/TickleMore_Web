class Api::V1::RestaurantCartsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @restaurant_carts = RestaurantCart.all
  end

  def create
    @restaurant_cart = RestaurantCart.new(restaurant_cart_params)
    # byebug
    respond_to do |format|
      if @restaurant_cart.save
        format.html {render :html => @post, status: :created}
        format.json {render :json => @post, status: :created}
      else
        Rails.logger.info @restaurant_cart.errors.full_messages.join(", ")
        format.html {render :html => @post, status: :created}
        format.json {render :json => @post, status: :created}
      end
    end
  end

  def destroy
    @restaurant_cart = RestaurantCart.find(params[:id])
    @restaurant_cart.destroy
    respond_to do |format|
      format.json {head :ok}
    end
  end

  private

  def restaurant_cart_params
    params.require(:restaurant_cart).permit(:id, :title, :cash_value,
    :description, :image)
  end
end
