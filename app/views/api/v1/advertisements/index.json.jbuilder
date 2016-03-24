json.array! @advertisements do |advertisement|
  json.id advertisement.id
  json.title advertisement.title.titleize
  json.cash_value advertisement.cash_value.to_f
  json.image advertisement.image.preview.url
end
