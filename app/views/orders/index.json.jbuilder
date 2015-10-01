json.array!(@orders) do |order|
  json.extract! order, :id, :name, :email, :address, :suburb, :state, :post_code, :country, :shipped, :buyer_id
  json.url order_url(order, format: :json)
end
