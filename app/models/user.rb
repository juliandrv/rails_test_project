class User < ApplicationRecord
	has_many :notes
	has_many :products
	has_many :comments

	after_create :print_message
	# before_create :custom_method

	# def custom_method
	# 	self.notes += 1
	# end

	private
		def print_message
			puts "¡Usurario creado!"
		end
end
