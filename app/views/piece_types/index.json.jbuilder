json.array!(@piece_types) do |piece_type|
  json.extract! piece_type, :id, :name
  json.url piece_type_url(piece_type, format: :json)
end
