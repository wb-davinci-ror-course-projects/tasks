json.array!(@projects) do |project|
  json.extract! project, :id, :name, :deadline, :ideas, :code_higlights, :temp_notes
  json.url project_url(project, format: :json)
end
