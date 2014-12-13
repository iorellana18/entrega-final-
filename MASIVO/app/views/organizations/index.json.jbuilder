json.array!(@organizations) do |organization|
  json.extract! organization, :id, :name_organization, :url_organization
  json.url organization_url(organization, format: :json)
end
