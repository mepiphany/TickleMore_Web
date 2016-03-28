class CouponsController < ApplicationController

  def index
    @coupons = Coupon.all
  end

  def new
    @coupon = Coupon.new
  end

  def create
    @coupon = Coupon.new(coupon_params)
    if @coupon.save
      redirect_to new_coupon_path, notice: "Your Coupon has been added"
    else
      flash[:alert] = "Failed to add coupon"
      render :new
    end
  end

  private

  def coupon_params
    params.require(:coupon).permit([:title, :description, :image])
  end
end
