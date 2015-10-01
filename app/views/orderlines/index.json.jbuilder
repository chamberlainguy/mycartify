json.array!(@orderlines) do |orderline|
  json.extract! orderline, :id, :product_name, :quantity, :total_price, :product_id, :order_id
  json.url orderline_url(orderline, format: :json)
end
