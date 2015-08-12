json.array!(@mother_names) do |mother_name|
  json.extract! mother_name, :id, :mothername
  json.url mother_name_url(mother_name, format: :json)
end
