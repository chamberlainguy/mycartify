class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :name
      t.string :email
      t.string :address
      t.string :suburb
      t.string :state
      t.string :post_code
      t.string :country
      t.date :shipped
      t.integer :buyer_id

      t.timestamps null: false
    end
  end
end
