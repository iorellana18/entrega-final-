json.array!(@evaluations) do |evaluation|
  json.extract! evaluation, :id, :date_start_evaluation, :date_end_evaluation, :num_mentions, :num_mentions_positive, :num_mentions_negative, :num_user_active, :evaluation_real_time, :review_event_id, :data_evaluation_real_time_id, :evaluation_account_event_id
  json.url evaluation_url(evaluation, format: :json)
end
