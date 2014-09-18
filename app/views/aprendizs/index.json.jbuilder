json.array!(@aprendizs) do |aprendiz|
  json.extract! aprendiz, :id, :nombre, :apellido, :doc, :centro_id, :ficha_id
  json.url aprendiz_url(aprendiz, format: :json)
end
