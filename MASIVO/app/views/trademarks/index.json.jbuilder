json.array!(@trademarks) do |trademark|
  json.extract! trademark, :id, :name_mark, :organization_id
  json.url trademark_url(trademark, format: :json)
end
