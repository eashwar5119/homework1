json.array!(@schedules) do |schedule|
  json.extract! schedule, :id, :Support_id, :vacation, :Date
  json.url schedule_url(schedule, format: :json)
end
