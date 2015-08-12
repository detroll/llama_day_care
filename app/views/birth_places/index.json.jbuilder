json.array!(@birth_places) do |birth_place|
  json.extract! birth_place, :id, :birth
  json.url birth_place_url(birth_place, format: :json)
end
