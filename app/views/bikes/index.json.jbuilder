json.array!(@bikes) do |bike|
  json.extract! bike, :id, :station_id, :bike_status
  json.url bike_url(bike, format: :json)
end
