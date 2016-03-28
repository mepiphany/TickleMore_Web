class Api::V1::BeveragesController < ApplicationController
  def index
    @beverages = Beverage.all
    respond_to do |format|
      format.html {render}
      format.json {render}
    end
  end
end
