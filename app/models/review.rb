class Review < ApplicationRecord
  belongs_to :stores, optional: true
  validates :review, :presence => true
end
