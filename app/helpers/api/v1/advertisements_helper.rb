module Api::V1::AdvertisementsHelper
  def url(source)
    "#{root_url}#{(source)}"
  end
end
