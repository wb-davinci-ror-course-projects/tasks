json.array!(@blog_links) do |blog_link|
  json.extract! blog_link, :id, :link, :description, :category
  json.url blog_link_url(blog_link, format: :json)
end
