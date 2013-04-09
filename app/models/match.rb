class Match < ActiveRecord::Base
  belongs_to :brand
  belongs_to :product
  attr_accessible :color, :description, :link, :luminosity, :name, :overall, :price, :texture, :brand_id, :photo

  has_attached_file :photo, styles: {
  	thumb: '50x50#',
  	square: '250x250#'
  }, :default_url => "/assets/missing.png"
end
