class WelcomeController < ApplicationController
  def index
    @advertisements = Advertisement.all
  end
end
