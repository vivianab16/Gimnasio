json.array!(@otros) do |otro|
  json.extract! otro, :id, :nombre, :apellido, :doc, :cargo_id
  json.url otro_url(otro, format: :json)
end
