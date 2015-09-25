class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.decimal :list_price
      t.string :image
      t.boolean :available
      t.integer :quantity
      t.decimal :postage
      t.integer :category_id

      t.timestamps null: false
    end
  end
end
