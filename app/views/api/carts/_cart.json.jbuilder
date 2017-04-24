json.extract! cart, :id, :user_id, :purchased

json.cart_items do
  json.array! cart.cart_items do |cart_item|
    json.cart_item_id cart_item.id
    json.item_id cart_item.item.id
    json.item_quantity cart_item.item_quantity
    json.item_seller do
      json.extract! cart_item.item.seller, :first_name, :last_name
    end
    json.item_name cart_item.item.name
    json.item_description cart_item.item.description
    json.item_price cart_item.item.price
    json.item_category cart_item.item.category
    json.item_image cart_item.item.image
  end
end
