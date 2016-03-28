class Api::V1::RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
    respond_to do |format|
      format.html {render}
      format.json {render}
    end
  end
end
