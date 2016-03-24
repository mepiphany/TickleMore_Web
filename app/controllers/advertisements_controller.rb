class AdvertisementsController < ApplicationController

  def index
    @advertisements = Advertisement.all
    respond_to do |format|
      format.html {render}
      format.json { render json: @advertisements}
    end

  end

  def new
    @advertisement = Advertisement.new
  end

  def create
    @advertisement = Advertisement.new(advertisement_params)
    if @advertisement.save
      redirect_to new_advertisement_path, notice: "Your Advertisement has been added"
    else
      flash[:alert] = "Failed to add advertisement"
      render :new
    end
  end

  private

  def advertisement_params
     params.require(:advertisement).permit([:title, :image, :cash_value])
  end


end
