class Eletronic < ActiveRecord::Base
  
  mount_uploader :image, EletronicUploader

  validates :title, presence: true
  validates :description, presence: true
  validates :image, presence: true
  validates :cash_value, presence: true
end
