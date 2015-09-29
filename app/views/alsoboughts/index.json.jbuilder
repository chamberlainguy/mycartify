json.array!(@alsoboughts) do |alsobought|
  json.extract! alsobought, :id, :product_id
  json.url alsobought_url(alsobought, format: :json)
end
