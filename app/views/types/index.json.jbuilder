json.array!(@types) do |type|
  json.extract! type, :id, :name, :fields, :priority, :children, :relations, :extras
  json.url type_url(type, format: :json)
end
