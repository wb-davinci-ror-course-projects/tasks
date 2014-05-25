json.array!(@studies) do |study|
  json.extract! study, :id, :name, :next_up, :done_for_today, :deadline, :priority, :category, :links, :material, :completed, :notes
  json.url study_url(study, format: :json)
end
