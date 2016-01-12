json.array!(@employees) do |employee|
  json.extract! employee, :id, :first_name, :last_name, :password, :password_confirmation, :location_id
  json.url employee_url(employee, format: :json)
end
