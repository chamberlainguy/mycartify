class CreateOrderlines < ActiveRecord::Migration
  def change
    create_table :orderlines do |t|
      t.string :product_name
      t.integer :quantity
      t.decimal :total_price
      t.integer :product_id
      t.integer :order_id

      t.timestamps null: false
    end
  end
end
