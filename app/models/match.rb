class Match < ActiveRecord::Base
  belongs_to :brand
  belongs_to :product
  attr_accessible :color, :description, :link, :luminosity, :name, :overall, :price, :texture, :brand_id
end
