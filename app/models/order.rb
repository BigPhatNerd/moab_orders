class Order < ApplicationRecord
	belongs_to :user
	default_scope { order(created_at: :asc) }


	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :item, presence: true
	validates :size, presence: true
	validates :quantity, presence: true
	validates :color, presence: true
	validates :cost, presence: true
	validates :department, presence: true
	
	
	def price
		case self.item
		when "jacket $35"
			@amount = 35
			self.cost = 10
		when "vest $35"
			@amount = 35
			self.cost = 35

		end
	end
	def showColor
		self.color === "black" ? "black" : "navy"
	end

	def self.smallBlackVest
		count = 0
		Order.where(item: "vest $35",size: "S", color: "black", description: "Men's").each do |order|
			count += order.quantity

		end
		return count
	end

	def self.mediumBlackVest
		count = 0
		Order.where(item: "vest $35",size: "M", color: "black", description: "Men's").each do |order|
			count += order.quantity

		end
		return count
	end

	def self.largeBlackVest
		count = 0
		Order.where(item: "vest $35",size: "L", color: "black", description: "Men's").each do |order|
			count += order.quantity

		end
		return count
	end
	def self.xlBlackVest
		count = 0
		Order.where(item: "vest $35",size: "XL", color: "black", description: "Men's").each do |order|
			count += order.quantity

		end
		return count

	end

	def self.twoXLBlackVest
		count = 0
		Order.where(item: "vest $35",size: "2XL", color: "black", description: "Men's").each do |order|
			count += order.quantity

		end
		return count
	end

	def self.threeXLBlackVest
		count = 0
		Order.where(item: "vest $35",size: "3XL", color: "black", description: "Men's").each do |order|
			count += order.quantity

		end
		return count
	end

	def self.fourXLBlackVest
		count = 0
		Order.where(item: "vest $35",size: "4XL", color: "black", description: "Men's").each do |order|
			count += order.quantity

		end
		return count
	end

	def self.fiveXLBlackVest
		count = 0
		Order.where(item: "vest $35",size: "5XL", color: "black", description: "Men's").each do |order|
			count += order.quantity

		end
		return count

	end

	def self.sixXLBlackVest
		count = 0
		Order.where(item: "vest $35",size: "6XL", color: "black", description: "Men's").each do |order|
			count += order.quantity

		end
		return count
	end

	def self.smallNavyVest
		count = 0
		Order.where(item: "vest $35",size: "S", color: "navy* (Must be RN or MD to order navy)", description: "Men's").each do |order|
			count += order.quantity

		end
		return count
	end

	def self.medNavyVest
		count = 0
		Order.where(item: "vest $35",size: "M", color: "navy* (Must be RN or MD to order navy)", description: "Men's").each do |order|
			count += order.quantity

		end
		return count
	end

	def self.largeNavyVest
		count = 0
		Order.where(item: "vest $35",size: "L", color: "navy* (Must be RN or MD to order navy)", description: "Men's").each do |order|
			count += order.quantity

		end
		return count
	end

	def self.xlNavyVest
		count = 0
		Order.where(item: "vest $35",size: "XL", color: "navy* (Must be RN or MD to order navy)", description: "Men's").each do |order|
			count += order.quantity

		end
		return count	
	end

	def self.twoXLNavyVest
		count = 0
		Order.where(item: "vest $35",size: "2XL", color: "navy* (Must be RN or MD to order navy)", description: "Men's").each do |order|
			count += order.quantity

		end
		return count
	end

	def self.threeXLNavyVest
		count = 0
		Order.where(item: "vest $35",size: "3XL", color: "navy* (Must be RN or MD to order navy)", description: "Men's").each do |order|
			count += order.quantity

		end
		return count
	end

	def self.fourXLNavyVest
		count = 0
		Order.where(item: "vest $35",size: "4XL", color: "navy* (Must be RN or MD to order navy)", description: "Men's").each do |order|
			count += order.quantity

		end
		return count
	end

	def self.fiveXLNavyVest
		count = 0
		Order.where(item: "vest $35",size: "5XL", color: "navy* (Must be RN or MD to order navy)", description: "Men's").each do |order|
			count += order.quantity

		end
		return count
	end

	def self.sixXLNavyVest
		count = 0
		Order.where(item: "vest $35",size: "6XL", color: "navy* (Must be RN or MD to order navy)", description: "Men's").each do |order|
			count += order.quantity

		end
		return count
	end

	def self.smallBlackJacket
		count = 0
		Order.where(item: "jacket $35",size: "S", color: "black", description: "Men's").each do |order|
			count += order.quantity

		end
		return count
	end

	def self.mediumBlackJacket
		count = 0
		Order.where(item: "jacket $35",size: "M", color: "black", description: "Men's").each do |order|
			count += order.quantity

		end
		return count
	end

def self.largeBlackJacket
	count = 0
	Order.where(item: "jacket $35",size: "L", color: "black", description: "Men's").each do |order|
		count += order.quantity

		end
		return count
	end

	def self.xlBlackJacket
		count = 0
Order.where(item: "jacket $35",size: "XL", color: "black", description: "Men's").each do |order|
	count += order.quantity

		end
		return count
	end

def self.twoXLBlackJacket
	count = 0
	Order.where(item: "jacket $35",size: "2XL", color: "black", description: "Men's").each do |order|
		count += order.quantity

		end
		return count
end

def self.threeXLBlackJacket
	count = 0
Order.where(item: "jacket $35",size: "3XL", color: "black", description: "Men's").each do |order|
	count += order.quantity

		end
		return count
	end

	def self.fourXLBlackJacket
		count = 0
Order.where(item: "jacket $35",size: "4XL", color: "black", description: "Men's").each do |order|
	count += order.quantity

		end
		return count
	end

	def self.fiveXLBlackJacket
		count = 0
Order.where(item: "jacket $35",size: "5XL", color: "black", description: "Men's").each do |order|
	count += order.quantity

		end
		return count
	end

	def self.sixXLBlackJacket
		count = 0
Order.where(item: "jacket $35",size: "6XL", color: "black", description: "Men's").each do |order|
	count += order.quantity

		end
		return count
	end

	def self.smallNavyJacket
		count = 0
		Order.where(item: "jacket $35",size: "S", color: "navy* (Must be RN or MD to order navy)", description: "Men's").each do |order|
			count += order.quantity

		end
		return count
	end

	def self.mediumNavyJacket
		count = 0
Order.where(item: "jacket $35",size: "M", color: "navy* (Must be RN or MD to order navy)", description: "Men's").each do |order|
	count += order.quantity

		end
		return count
	end

	def self.largeNavyJacket
		count = 0
Order.where(item: "jacket $35",size: "L", color: "navy* (Must be RN or MD to order navy)", description: "Men's").each do |order|
	count += order.quantity

		end
		return count
	end

	def self.xlNavyJacket
		count = 0
Order.where(item: "jacket $35",size: "XL", color: "navy* (Must be RN or MD to order navy)", description: "Men's").each do |order|
	count += order.quantity

		end
		return count
	end

	def self.twoXLNavyJacket
		count = 0
Order.where(item: "jacket $35",size: "2XL", color: "navy* (Must be RN or MD to order navy)", description: "Men's").each do |order|
	count += order.quantity

		end
		return count
	end

	def self.threeXLNavyJacket
		count = 0
Order.where(item: "jacket $35",size: "3XL", color: "navy* (Must be RN or MD to order navy)", description: "Men's").each do |order|
	count += order.quantity

		end
		return count
	end

	def self.fourXLNavyJacket
		count = 0
Order.where(item: "jacket $35",size: "4XL", color: "navy* (Must be RN or MD to order navy)", description: "Men's").each do |order|
	count += order.quantity

		end
		return count
	end

	def self.fiveXLNavyJacket
		count = 0
Order.where(item: "jacket $35",size: "5XL", color: "navy* (Must be RN or MD to order navy)", description: "Men's").each do |order|
	count += order.quantity

		end
		return count
	end

	def self.sixXLNavyJacket
		count = 0
Order.where(item: "jacket $35",size: "6XL", color: "navy* (Must be RN or MD to order navy)", description: "Men's").each do |order|
	count += order.quantity

		end
		return count
	end
	###############################################################

def self.ladiesxsmallBlackVest
		count = 0
		Order.where(item: "vest $35",size: "XS", color: "black", description: "Women's").each do |order|
			count += order.quantity

		end
		return count
	end
		def self.ladiessmallBlackVest
		count = 0
		Order.where(item: "vest $35",size: "S", color: "black", description: "Women's").each do |order|
			count += order.quantity

		end
		return count
	end

	def self.ladiesmediumBlackVest
		count = 0
		Order.where(item: "vest $35",size: "M", color: "black", description: "Women's").each do |order|
			count += order.quantity

		end
		return count
	end

	def self.ladieslargeBlackVest
		count = 0
		Order.where(item: "vest $35",size: "L", color: "black", description: "Women's").each do |order|
			count += order.quantity

		end
		return count
	end
	def self.ladiesxlBlackVest
		count = 0
		Order.where(item: "vest $35",size: "XL", color: "black", description: "Women's").each do |order|
			count += order.quantity

		end
		return count

	end

	def self.ladiestwoXLBlackVest
		count = 0
		Order.where(item: "vest $35",size: "2XL", color: "black", description: "Women's").each do |order|
			count += order.quantity

		end
		return count
	end

	def self.ladiesthreeXLBlackVest
		count = 0
		Order.where(item: "vest $35",size: "3XL", color: "black", description: "Women's").each do |order|
			count += order.quantity

		end
		return count
	end

	def self.ladiesfourXLBlackVest
		count = 0
		Order.where(item: "vest $35",size: "4XL", color: "black", description: "Women's").each do |order|
			count += order.quantity

		end
		return count
	end

	
def self.ladiesxsmallNavyVest
		count = 0
		Order.where(item: "vest $35",size: "XS", color: "navy* (Must be RN or MD to order navy)", description: "Women's").each do |order|
			count += order.quantity

		end
		return count
	end

	def self.ladiessmallNavyVest
		count = 0
		Order.where(item: "vest $35",size: "S", color: "navy* (Must be RN or MD to order navy)", description: "Women's").each do |order|
			count += order.quantity

		end
		return count
	end

	def self.ladiesmedNavyVest
		count = 0
		Order.where(item: "vest $35",size: "M", color: "navy* (Must be RN or MD to order navy)", description: "Women's").each do |order|
			count += order.quantity

		end
		return count
	end

	def self.ladieslargeNavyVest
		count = 0
		Order.where(item: "vest $35",size: "L", color: "navy* (Must be RN or MD to order navy)", description: "Women's").each do |order|
			count += order.quantity

		end
		return count
	end

	def self.ladiesxlNavyVest
		count = 0
		Order.where(item: "vest $35",size: "XL", color: "navy* (Must be RN or MD to order navy)", description: "Women's").each do |order|
			count += order.quantity

		end
		return count	
	end

	def self.ladiestwoXLNavyVest
		count = 0
		Order.where(item: "vest $35",size: "2XL", color: "navy* (Must be RN or MD to order navy)", description: "Women's").each do |order|
			count += order.quantity

		end
		return count
	end

	def self.ladiesthreeXLNavyVest
		count = 0
		Order.where(item: "vest $35",size: "3XL", color: "navy* (Must be RN or MD to order navy)", description: "Women's").each do |order|
			count += order.quantity

		end
		return count
	end

	def self.ladiesfourXLNavyVest
		count = 0
		Order.where(item: "vest $35",size: "4XL", color: "navy* (Must be RN or MD to order navy)", description: "Women's").each do |order|
			count += order.quantity

		end
		return count
	end

	def self.ladiesxsmallBlackJacket
		count = 0
		Order.where(item: "jacket $35",size: "XS", color: "black", description: "Women's").each do |order|
			count += order.quantity

		end
		return count
	end

	def self.ladiessmallBlackJacket
		count = 0
		Order.where(item: "jacket $35",size: "S", color: "black", description: "Women's").each do |order|
			count += order.quantity

		end
		return count
	end

	def self.ladiesmediumBlackJacket
		count = 0
		Order.where(item: "jacket $35",size: "M", color: "black", description: "Women's").each do |order|
			count += order.quantity

		end
		return count
	end

def self.ladieslargeBlackJacket
	count = 0
	Order.where(item: "jacket $35",size: "L", color: "black", description: "Women's").each do |order|
		count += order.quantity

		end
		return count
	end

	def self.ladiesxlBlackJacket
		count = 0
Order.where(item: "jacket $35",size: "XL", color: "black", description: "Women's").each do |order|
	count += order.quantity

		end
		return count
	end

def self.ladiestwoXLBlackJacket
	count = 0
	Order.where(item: "jacket $35",size: "2XL", color: "black", description: "Women's").each do |order|
		count += order.quantity

		end
		return count
end

def self.ladiesthreeXLBlackJacket
	count = 0
Order.where(item: "jacket $35",size: "3XL", color: "black", description: "Women's").each do |order|
	count += order.quantity

		end
		return count
	end

	def self.ladiesfourXLBlackJacket
		count = 0
Order.where(item: "jacket $35",size: "4XL", color: "black", description: "Women's").each do |order|
	count += order.quantity

		end
		return count
	end

	
def self.ladiesxsmallNavyJacket
		count = 0
		Order.where(item: "jacket $35",size: "XS", color: "navy* (Must be RN or MD to order navy)", description: "Women's").each do |order|
			count += order.quantity

		end
		return count
	end

	def self.ladiessmallNavyJacket
		count = 0
		Order.where(item: "jacket $35",size: "S", color: "navy* (Must be RN or MD to order navy)", description: "Women's").each do |order|
			count += order.quantity

		end
		return count
	end

	def self.ladiesmediumNavyJacket
		count = 0
Order.where(item: "jacket $35",size: "M", color: "navy* (Must be RN or MD to order navy)", description: "Women's").each do |order|
	count += order.quantity

		end
		return count
	end

	def self.ladieslargeNavyJacket
		count = 0
Order.where(item: "jacket $35",size: "L", color: "navy* (Must be RN or MD to order navy)", description: "Women's").each do |order|
	count += order.quantity

		end
		return count
	end

	def self.ladiesxlNavyJacket
		count = 0
Order.where(item: "jacket $35",size: "XL", color: "navy* (Must be RN or MD to order navy)", description: "Women's").each do |order|
	count += order.quantity

		end
		return count
	end

	def self.ladiestwoXLNavyJacket
		count = 0
Order.where(item: "jacket $35",size: "2XL", color: "navy* (Must be RN or MD to order navy)", description: "Women's").each do |order|
	count += order.quantity

		end
		return count
	end

	def self.ladiesthreeXLNavyJacket
		count = 0
	
Order.where(item: "jacket $35",size: "3XL", color: "navy* (Must be RN or MD to order navy)", description: "Women's").each do |order|
	count += order.quantity

		end
	end
		return count
	end

	def self.ladiesfourXLNavyJacket
		count = 0
Order.where(item: "jacket $35",size: "4XL", color: "navy* (Must be RN or MD to order navy)", description: "Women's").each do |order|
	count += order.quantity

		end
		return count
	end

	
	
end
