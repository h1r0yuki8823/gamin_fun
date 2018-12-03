class CreateReviews < ActiveRecord::Migration[5.2]
    def change
      create_table :reviews do |t|
        t.text :content
        t.references :product, foreign_key: true
  
        t.timestamps
      end
      add_index :reviews, [:product_id, :created_at]
    end
  end
  