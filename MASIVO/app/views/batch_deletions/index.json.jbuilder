json.array!(@batch_deletions) do |batch_deletion|
  json.extract! batch_deletion, :id, :num_tweets_delete, :date_until_delete_tweets, :num_account_delete, :date_until_delete_account, :num_evaluation_delete, :date_delete_evaluation
  json.url batch_deletion_url(batch_deletion, format: :json)
end
