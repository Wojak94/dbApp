json.array!(@locations) do |location|
  json.extract! location, :id, :street, :flat_number, :city, :postcode
  json.url location_url(location, format: :json)
end
