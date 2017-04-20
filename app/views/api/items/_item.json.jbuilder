json.extract! item, :id, :name, :description, :price, :category, :quantity

json.image asset_path(item.image.url)
json.seller do
  json.extract! item.seller, :first_name, :last_name
end
