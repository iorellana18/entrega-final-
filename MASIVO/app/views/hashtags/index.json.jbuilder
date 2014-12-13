json.array!(@hashtags) do |hashtag|
  json.extract! hashtag, :id, :date_publish_hashtag, :official, :num_mentions_hashtag, :hashtag_content
  json.url hashtag_url(hashtag, format: :json)
end
