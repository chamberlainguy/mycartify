class CreateAlsoboughts < ActiveRecord::Migration
  def change
    create_table :alsoboughts do |t|
      t.integer :product_id
      t.integer :alsogot_id
      t.timestamps null: false
    end
  end
end
