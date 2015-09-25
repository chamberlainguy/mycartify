json.array!(@products) do |product|
  json.extract! product, :id, :name, :description, :price, :list_price, :image, :available, :quantity, :postage, :category_id
  json.url product_url(product, format: :json)
end
