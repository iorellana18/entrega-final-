json.array!(@evaluation_account_events) do |evaluation_account_event|
  json.extract! evaluation_account_event, :id, :num_followers_start, :num_followers_end, :evaluation_id
  json.url evaluation_account_event_url(evaluation_account_event, format: :json)
end
