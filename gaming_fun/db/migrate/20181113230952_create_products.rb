class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string  :name, null: false
      t.integer :maker_id, null: false
      t.integer :category_id, null: false
      t.text :product_description 
      t.integer :price
      t.date :release_date

      t.timestamps
    end
  end
end
