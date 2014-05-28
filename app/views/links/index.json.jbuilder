json.array!(@links) do |link|
  json.extract! link, :id, :description, :address, :notes, :rank, :language, :category, :visited
  json.url link_url(link, format: :json)
end
