json.beverages do
  json.array! @beverages do |beverage|
    json.id beverage.id
    json.title beverage.title.titleize
    json.description beverage.description
    json.c number_to_currency(beverage.cash_value, unit: '')
    json.image url(beverage.image.url)
  end
end
