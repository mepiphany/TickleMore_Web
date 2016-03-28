json.eletronics do
  json.array! @eletronics do |eletronic|
    json.id eletronic.id
    json.title eletronic.title.titleize
    json.description eletronic.description
    json.c eletronic.cash_value
    json.image url(eletronic.image.url)
  end
end
