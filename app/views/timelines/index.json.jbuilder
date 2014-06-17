json.array!(@timelines) do |timeline|
  json.extract! timeline, :id, :event_year, :event, :who, :notes
  json.url timeline_url(timeline, format: :json)
end
