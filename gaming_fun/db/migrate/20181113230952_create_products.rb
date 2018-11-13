class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :maker_id
      t.integer :category_id
      t.text :product_description
      t.integer :price
      t.date :release_date

      t.timestamps
    end
  end
end
