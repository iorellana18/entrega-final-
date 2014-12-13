json.array!(@data_tweet_reviews) do |data_tweet_review|
  json.extract! data_tweet_review, :id, :geo, :state, :geo_cord, :city_tweet, :comuna_tweet, :sensitivity_rank, :tweet_id
  json.url data_tweet_review_url(data_tweet_review, format: :json)
end
