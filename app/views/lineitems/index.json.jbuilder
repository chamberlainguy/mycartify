json.array!(@lineitems) do |lineitem|
  json.extract! lineitem, :id, :product_id, :cart_id, :quantity
  json.url lineitem_url(lineitem, format: :json)
end
