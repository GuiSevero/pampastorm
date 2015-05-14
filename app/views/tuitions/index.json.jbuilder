json.array!(@tuitions) do |tuition|
  json.extract! tuition, :id, :customer_id, :due_date, :status
  json.url tuition_url(tuition, format: :json)
end
