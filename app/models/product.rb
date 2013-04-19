class Product < ActiveRecord::Base
  belongs_to :brand
  belongs_to :area
  belongs_to :category
  has_many :matches
  attr_accessible :description, :link, :name, :price, :brand_id, :area_id, :category_id, :photo

  has_attached_file :photo, styles: {
    square: '250x250#'
  }, :default_url => "/assets/missing.png"

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
    areas = []
		results.each do |result|
			ids.push(result.id)
      areas.push(result.area_id)
		end
		Product.find(:all, :conditions => ['id NOT IN (?) AND area_id IN (?)', ids, areas])
  end
end
