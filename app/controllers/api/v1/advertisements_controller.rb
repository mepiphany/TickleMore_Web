class Api::V1::AdvertisementsController < ApplicationController
  def index
    @advertisements = Advertisement.all
    respond_to do |format|
      format.html {render}
      format.json {render}
    end
  end
end
