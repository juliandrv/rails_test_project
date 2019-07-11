class Product < ApplicationRecord
	validates :name, :price, :description, presence: true
	validates :price, numericality: { only_float: true }
									#greater_than_or_equal_to: 11,
									#less_than_or_equal_to: 100
	#validates :price, length: { in: 6..10}
	validates :name, length: { minimum: 3 }
	#validates :description, format: { with: /\A[a-zA-Z]/, message: "only allows letters"}

  #has_many :comments
  	belongs_to :user, optional: true
end
