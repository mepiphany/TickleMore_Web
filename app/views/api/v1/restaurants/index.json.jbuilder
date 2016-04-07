json.restaurants do
  json.array! @restaurants do |restaurant|
    json.id restaurant.id
    json.title restaurant.title.titleize
    json.description restaurant.description
    json.c number_to_currency(restaurant.cash_value, unit: "")
    json.image url(restaurant.image.thumb.url)
  end
end
