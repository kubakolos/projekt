json.array!(@employee_details) do |employee_detail|
  json.extract! employee_detail, :id, :city, :address, :house_number, :phone_number, :postal_code, :employee_id
  json.url employee_detail_url(employee_detail, format: :json)
end
