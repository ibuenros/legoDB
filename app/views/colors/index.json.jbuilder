json.array!(@colors) do |color|
  json.extract! color, :id, :code, :name, :rgb
  json.url color_url(color, format: :json)
end
