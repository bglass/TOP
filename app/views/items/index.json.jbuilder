json.array!(@items) do |item|
  json.extract! item, :id, :type_id, :item_id, :content
  json.url item_url(item, format: :json)
end
