json.array!(@notebooks) do |notebook|
  json.extract! notebook, :id, :title
  json.url notebook_url(notebook, format: :json)
end
