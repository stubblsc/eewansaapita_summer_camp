json.array!(@essays) do |essay|
  json.extract! essay, :id, :userId, :essay, :year
  json.url essay_url(essay, format: :json)
end
