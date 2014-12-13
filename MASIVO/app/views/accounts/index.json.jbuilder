json.array!(@accounts) do |account|
  json.extract! account, :id, :key_user_id, :user_twitter, :user_name, :type_account, :data_account_event_id
  json.url account_url(account, format: :json)
end
