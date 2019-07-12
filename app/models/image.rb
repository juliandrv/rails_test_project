class Image < ApplicationRecord
	validates :name, :url, :alt, presence: true
end
