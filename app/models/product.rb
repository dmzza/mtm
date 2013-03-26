class Product < ActiveRecord::Base
  belongs_to :brand
  belongs_to :area
  belongs_to :category
  attr_accessible :description, :link, :name, :price, :brand_id, :area_id, :category_id

  def self.search(query)
  	find(:all, :conditions => ['name ilike ? or description ilike ?', "%#{query}%", "%#{query}%"])
  end

  def self.similar(query)
		find(:all, :conditions => ['name NOT ilike ? and description not ilike ?', "%#{query}%", "%#{query}%"])
  end
end
