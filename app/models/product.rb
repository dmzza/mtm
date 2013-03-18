class Product < ActiveRecord::Base
  belongs_to :brand
  belongs_to :area
  belongs_to :category
  attr_accessible :description, :link, :name, :price
end
