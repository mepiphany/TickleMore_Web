class RestaurantCart < ActiveRecord::Base
  # mount_uploader :image, RestaurantCartUploader

  validates :image, presence: true
end
