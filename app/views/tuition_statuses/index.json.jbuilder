json.array!(@tuition_statuses) do |tuition_status|
  json.extract! tuition_status, :id, :id, :status
  json.url tuition_status_url(tuition_status, format: :json)
end
