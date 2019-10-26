class Order < ApplicationRecord
	belongs_to :user

	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :item, presence: true
	validates :size, presence: true
	validates :quantity, presence: true
	validates :color, presence: true
	validates :cost, presence: true
	
	def price
		case self.item
		when "jacket $30"
			@amount = 10
			self.cost = 10
		when "shirt $20"
			@amount = 25
			self.cost = 25
		when "pullover $50"
			@amount = 50
			self.cost = 50
		end
	end
	
end
