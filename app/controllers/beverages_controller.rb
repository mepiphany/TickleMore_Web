class BeveragesController < ApplicationController
  def index
    @beverages = Beverage.all
  end

  def new
    @beverage = Beverage.new
  end

  def create
    @beverage = Beverage.new(beverage_params)
    if @beverage.save
      redirect_to new_beverage_path, notice: "Your Beverage has been added"
    else
      flash[:alert] = "Failed to add beverage"
      render :new
    end
  end

  private

  def beverage_params
    params.require(:beverage).permit([:title, :description, :image, :cash_value])

  end
end
