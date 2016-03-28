class Coupon < ActiveRecord::Base

  mount_uploader :image, CouponUploader



  validates :title, presence: true
  validates :image, presence: true
  validates :description, presence: true
end
