json.array!(@data_account_events) do |data_account_event|
  json.extract! data_account_event, :id, :location, :url_twitter_event, :url_official, :num_tweets, :num_photo_and_video, :num_following, :num_followers, :account_official, :date_creation_account, :account_id
  json.url data_account_event_url(data_account_event, format: :json)
end
