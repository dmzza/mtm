class Product < ActiveRecord::Base
  belongs_to :brand
  belongs_to :area
  belongs_to :category
  has_many :matches
  attr_accessible :description, :link, :name, :price, :brand_id, :area_id, :category_id

  include PgSearch
  pg_search_scope :search, against: [:name, :description],
  	using: {tsearch: {dictionary: "english"}},
  	associated_against: {brand: :name, area: :name, category: :name}

  def self.seek(query)
  	search(query)
  	# scoped
  end

  def self.similar(query)
		results = search(query)
		ids = []
		results.each do |result|
			ids.push(result.id)
		end
		Product.find(:all, :conditions => ['id NOT IN (?)', ids])
  end
end
