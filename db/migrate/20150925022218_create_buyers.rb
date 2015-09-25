class CreateBuyers < ActiveRecord::Migration
  def change
    create_table :buyers do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :address
      t.string :suburb
      t.string :city
      t.string :state
      t.string :post_code
      t.string :country

      t.timestamps null: false
    end
  end
end
