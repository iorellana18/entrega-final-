json.array!(@events) do |event|
  json.extract! event, :id, :name_event, :type_of_event, :description, :event_location, :event_price_all_in, :num_turnout, :comuna_event, :start_date_event, :ending_date_event, :review_event_id
  json.url event_url(event, format: :json)
end
