class Product < ActiveRecord::Base
  belongs_to :brand
  belongs_to :area
  belongs_to :category
  attr_accessible :description, :link, :name, :price, :brand_id, :area_id, :category_id
end
