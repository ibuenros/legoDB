json.array!(@inventories) do |inventory|
  json.extract! inventory, :id, :name, :piece_count
  json.url inventory_url(inventory, format: :json)
end
