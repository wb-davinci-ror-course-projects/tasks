json.array!(@careers) do |career|
  json.extract! career, :id, :area, :next_up, :notes, :links, :materials, :priority, :last_worked_on
  json.url career_url(career, format: :json)
end
