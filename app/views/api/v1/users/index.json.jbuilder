json.users do
  json.array! @users do |user|
    json.id user.id
    json.name user.full_name.titleize
    json.email user.email
  end
end
