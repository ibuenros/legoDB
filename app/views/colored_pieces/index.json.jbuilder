json.array!(@colored_pieces) do |colored_piece|
  json.extract! colored_piece, :id, :code, :piece_id, :color_id
  json.url colored_piece_url(colored_piece, format: :json)
end
