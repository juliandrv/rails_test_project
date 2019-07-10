class Blog < ApplicationRecord
	validates :title, :post, presence: true
	validates :title, length: { maximum: 50}
	validates :post, length: { minimum: 300}
end
