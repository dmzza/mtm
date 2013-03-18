class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.string :name
      t.float :price
      t.string :link
      t.text :description
      t.references :brand
      t.references :product
      t.float :color
      t.float :texture
      t.float :luminosity
      t.float :overall

      t.timestamps
    end
    add_index :matches, :brand_id
    add_index :matches, :product_id
  end
end
