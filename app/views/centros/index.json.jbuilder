json.array!(@centros) do |centro|
  json.extract! centro, :id, :nombre, :programa_id
  json.url centro_url(centro, format: :json)
end
