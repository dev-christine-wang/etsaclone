@cart_items.each do |cart_item|
  json.set! cart_item.id do
    json.partial! '/api/cart_items/cart_item', cart_item: cart_item
  end
end
