class Story < ApplicationRecord
  belongs_to :user
  has_attached_file :image, styles: { small: "64x64", med: "100x100", large: "200x200" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  has_many :chaps, :dependent => :destroy
  has_many :comments, :dependent => :destroy
  def self.search(search)
	  where("name LIKE ?",  "%#{search}%") 
	end
end
