class Api::V1::CouponsController < ApplicationController
  def index
    @coupons = Coupon.all
    respond_to do |format|
      format.html {render}
      format.json {render}
    end
  end
end
