json.array!(@relations) do |relation|
  json.extract! relation, :id, :item_id, :itemable_id, :type_id
  json.url relation_url(relation, format: :json)
end
