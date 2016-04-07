json.restaurantCarts do
  json.array! @restaurant_carts do |cart|
    json.title cart.title
    json.description cart.description
    json.cash_value cart.cash_value
    json.image cart.image
  end
end
