class Advertisement < ActiveRecord::Base

  mount_uploader :image, AdvertisementUploader

  validates :title, presence: true
  validates :image, presence: true
  validates :cash_value, presence: true
end
