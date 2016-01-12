json.array!(@reports) do |report|
  json.extract! report, :id, :user_id, :operator_id, :report_time, :report_content
  json.url report_url(report, format: :json)
end
