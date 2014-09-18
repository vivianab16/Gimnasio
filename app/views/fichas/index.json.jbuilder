json.array!(@fichas) do |ficha|
  json.extract! ficha, :id, :programa, :ficha
  json.url ficha_url(ficha, format: :json)
end
