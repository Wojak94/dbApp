json.array!(@stations) do |station|
  json.extract! station, :id, :location_id, :bike_quantity
  json.url station_url(station, format: :json)
end
