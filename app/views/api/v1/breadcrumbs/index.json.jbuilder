json.breadcrumbs do
  json.array! @breadcrumbs do |breadcrumb|
    json.title breadcrumb.title
    json.view breadcrumb.view
    json.cash_value breadcrumb.cash_value
  end
end

json.set! :cash do
  json.set! :sum, number_to_currency(@breadcrumb_sum, unit: "")
end
