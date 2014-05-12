json.array!(@pieces) do |piece|
  json.extract! piece, :id, :code, :name, :type_id, :width, :length, :height
  json.url piece_url(piece, format: :json)
end
