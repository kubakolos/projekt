json.array!(@items) do |item|
  json.extract! item, :id, :name, :quantity, :vat
  json.url item_url(item, format: :json)
end
