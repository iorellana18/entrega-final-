json.array!(@review_account_events) do |review_account_event|
  json.extract! review_account_event, :id, :num_followers_start_review, :num_followers_end_review, :review_event_id
  json.url review_account_event_url(review_account_event, format: :json)
end
