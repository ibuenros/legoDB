json.array!(@inventory_pieces) do |inventory_piece|
  json.extract! inventory_piece, :id, :inventory_id, :colored_piece_id, :quantity
  json.url inventory_piece_url(inventory_piece, format: :json)
end
