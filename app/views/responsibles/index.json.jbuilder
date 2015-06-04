json.array!(@responsibles) do |responsible|
  json.extract! responsible, :id, :name, :student_id, :occupation, :mobile_number, :residencial_number, :comercial_number, :relation_type
  json.url responsible_url(responsible, format: :json)
end
