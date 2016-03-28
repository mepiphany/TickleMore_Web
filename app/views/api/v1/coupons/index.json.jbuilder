json.coupons do
  json.array! @coupons do |coupon|
    json.id coupon.id
    json.title coupon.title.titleize
    json.description coupon.description
    json.image url(coupon.image.url)
  end
end
