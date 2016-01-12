json.array!(@servicemen) do |serviceman|
  json.extract! serviceman, :id, :status
  json.url serviceman_url(serviceman, format: :json)
end
