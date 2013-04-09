class Brand < ActiveRecord::Base
  attr_accessible :name, :website, :logo
  has_many :products

  has_attached_file :logo, styles: {
  	thumb: '100x100#'
  }
end
