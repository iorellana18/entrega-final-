json.array!(@review_events) do |review_event|
  json.extract! review_event, :id, :start_date_review, :ending_date_review, :num_of_mentions, :num_active_users, :passing_rate, :num_mentions_positive_sum, :num_mentions_negative_sum, :event_id, :review_account_event_id
  json.url review_event_url(review_event, format: :json)
end
