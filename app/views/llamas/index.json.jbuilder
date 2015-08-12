json.array!(@llamas) do |llama|
  json.extract! llama, :id, :name, :breed, :age
  json.url llama_url(llama, format: :json)
end
