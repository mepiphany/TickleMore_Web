class Api::V1::UsersController < ApplicationController
  def index
    @users = User.all
    respond_to do |format|
      format.html {render}
      format.json {render}
    end
  end
end
