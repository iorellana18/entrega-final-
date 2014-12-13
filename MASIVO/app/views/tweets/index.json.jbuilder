json.array!(@tweets) do |tweet|
  json.extract! tweet, :id, :key_tw_id, :num_favorite, :num_retweet, :num_reply, :content_tweet, :account_id, :data_tweet_review_id
  json.url tweet_url(tweet, format: :json)
end
