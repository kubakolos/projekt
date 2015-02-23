json.array!(@employees) do |employee|
  json.extract! employee, :id, :name, :surname, :workplace, :years_of_work, :access_to_cash
  json.url employee_url(employee, format: :json)
end
