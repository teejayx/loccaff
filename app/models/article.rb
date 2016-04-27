class Article < ActiveRecord::Base
validates :title, presence: true, length: {minimum: 3, maximum: 50}
  validates :description, presence: true

  has_attached_file :image,
  validates_attachment_content_type :image, :content_type => /\Aimage\/?.*\Z/


  def self.search(query)
    where("title like ? OR description like ?", "%#{query}", "%#{query}%")
  end


end