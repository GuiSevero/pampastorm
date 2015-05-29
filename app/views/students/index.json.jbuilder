json.array!(@students) do |student|
  json.extract! student, :id, :name, :enrollment_date, :birth_date, :address, :zip_code
  json.url student_url(student, format: :json)
end
