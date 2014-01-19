json.array!(@t_types) do |t_type|
  json.extract! t_type, :id, :name, :fields, :priority, :children, :relations, :extras
  json.url t_type_url(t_type, format: :json)
end
