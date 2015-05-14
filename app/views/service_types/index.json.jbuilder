json.array!(@service_types) do |service_type|
  json.extract! service_type, :id, :id, :type
  json.url service_type_url(service_type, format: :json)
end
