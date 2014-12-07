json.extract! @list, :id, :name, :created_at, :updated_at;
json.array!(@categories) do |category|
  json.extract! category, :id, :name
end