json.array!(@rents) do |rent|
  json.extract! rent, :id, :user_id, :bike_id, :rent_place, :return_place, :rent_time, :return_time
  json.url rent_url(rent, format: :json)
end
