class AddPhotoToMatches < ActiveRecord::Migration
  def self.up
  	add_attachment :matches, :photo
  end

  def self.down
  	remove_attachment :matches, :photo
  end
end
