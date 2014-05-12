json.array!(@tasks) do |task|
  json.extract! task, :id, :name, :deadline, :completed, :date_completed, :priority, :notes, :links, :category, :sub_category, :contact, :location, :comm_info, :last_worked_on
  json.url task_url(task, format: :json)
end
