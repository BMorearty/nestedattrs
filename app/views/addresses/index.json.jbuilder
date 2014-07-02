json.array!(@addresses) do |address|
  json.extract! address, :id, :city, :state
  json.url address_url(address, format: :json)
end
