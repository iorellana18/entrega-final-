json.array!(@key_words_events) do |key_words_event|
  json.extract! key_words_event, :id, :palabra, :event_id
  json.url key_words_event_url(key_words_event, format: :json)
end
