class Api::V1::EletronicsController < ApplicationController
  def index
    @eletronics = Eletronic.all
    respond_to do |format|
      format.html {render}
      format.json {render}
    end
  end
end
