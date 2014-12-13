json.array!(@data_evaluation_real_times) do |data_evaluation_real_time|
  json.extract! data_evaluation_real_time, :id, :evaluation_id
  json.url data_evaluation_real_time_url(data_evaluation_real_time, format: :json)
end
