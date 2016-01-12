json.array!(@repairs) do |repair|
  json.extract! repair, :id, :bike_id, :serviceman_id, :start_time, :end_time, :repair_status
  json.url repair_url(repair, format: :json)
end
