json.array!(@contacts) do |contact|
  json.extract! contact, :id, :emails_contact, :country_contact, :phones_contact, :organization_id
  json.url contact_url(contact, format: :json)
end
