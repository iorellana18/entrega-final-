json.array!(@advertises) do |advertise|
  json.extract! advertise, :id, :date_origin_advertise, :date_end_advertise, :account_id, :event_id
  json.url advertise_url(advertise, format: :json)
end
