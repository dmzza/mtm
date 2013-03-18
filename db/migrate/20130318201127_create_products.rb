class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.float :price
      t.string :link
      t.text :description
      t.references :brand
      t.references :area
      t.references :category

      t.timestamps
    end
    add_index :products, :brand_id
    add_index :products, :area_id
    add_index :products, :category_id
  end
end
