json.extract! cart_item, :cart_id, :item_id, :item_quantity

json.cart_item_id cart_item.id


json.item_seller do
  json.extract! cart_item.item.seller, :first_name, :last_name
end
json.item_name cart_item.item.name
json.item_description cart_item.item.description
json.item_price cart_item.item.price
json.item_category cart_item.item.category
json.item_image cart_item.item.image
