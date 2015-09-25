json.array!(@buyers) do |buyer|
  json.extract! buyer, :id, :name, :email, :password_digest, :address, :suburb, :city, :state, :post_code, :country
  json.url buyer_url(buyer, format: :json)
end
