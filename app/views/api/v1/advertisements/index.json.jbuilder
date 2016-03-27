json.ads do
  json.array! @advertisements do |advertisement|
    json.id advertisement.id
    json.title advertisement.title.titleize
    json.cash_value advertisement.cash_value.to_f
    json.image url(advertisement.image.preview.url)
  end
end
