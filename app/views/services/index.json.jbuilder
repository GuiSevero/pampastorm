json.array!(@services) do |service|
  json.extract! service, :id, :service_type, :tuition_id, :value
  json.url service_url(service, format: :json)
end
