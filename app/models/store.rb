class Store < ApplicationRecord
  validates :store_name, :presence => true
  validates :content, :presence => true
  #
  scope :search_content, -> (query) { where("content like ?", "%#{query}%")}
  scope :search_store, -> (store_name) { where("store_name like ?", "%#{store_name}%")}
end
