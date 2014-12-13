json.array!(@addresses) do |address|
  json.extract! address, :id, :national, :headquarters, :address_all_in, :organization_id
  json.url address_url(address, format: :json)
end
