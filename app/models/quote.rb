class Quote < ApplicationRecord
  validates :author, :presence => true
  validates :content, :presence => true

  scope :search_content, -> (query) { where("content like ?", "%#{query}%")}

end
