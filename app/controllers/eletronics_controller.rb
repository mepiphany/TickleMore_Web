class EletronicsController < ApplicationController
  def index
    @eletronics = Eletronic.all
  end

  def new
    @eletronic = Eletronic.new
  end

  def create
    @eletronic = Eletronic.new(eletronic_params)
    if @eletronic.save
      redirect_to new_eletronic_path, notice: "Your Eletronic has been added"
    else
      flash[:alert] = "Failed to add eletronic"
      render :new
    end
  end

  private

  def eletronic_params
    params.require(:eletronic).permit([:title, :description, :image, :cash_value])
  end
end
