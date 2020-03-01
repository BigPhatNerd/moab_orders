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

	def self.smallBlackVest(dept)
		count = 0
		Order.where(item: "vest $35",size: "S", color: "black", description: "Men's", department: dept).each do |order|
			count += order.quantity

		end
		return count
	end

	def self.mediumBlackVest(dept)
		count = 0
		Order.where(item: "vest $35",size: "M", color: "black", description: "Men's", department: dept).each do |order|
			count += order.quantity

		end
		return count
	end

	def self.largeBlackVest(dept)
		count = 0
		Order.where(item: "vest $35",size: "L", color: "black", description: "Men's", department: dept).each do |order|
			count += order.quantity

		end
		return count
	end
	def self.xlBlackVest(dept)
		count = 0
		Order.where(item: "vest $35",size: "XL", color: "black", description: "Men's", department: dept).each do |order|
			count += order.quantity

		end
		return count

	end

	def self.twoXLBlackVest(dept)
		count = 0
		Order.where(item: "vest $35",size: "2XL", color: "black", description: "Men's", department: dept).each do |order|
			count += order.quantity

		end
		return count
	end

	def self.threeXLBlackVest(dept)
		count = 0
		Order.where(item: "vest $35",size: "3XL", color: "black", description: "Men's", department: dept).each do |order|
			count += order.quantity

		end
		return count
	end

	def self.fourXLBlackVest(dept)
		count = 0
		Order.where(item: "vest $35",size: "4XL", color: "black", description: "Men's", department: dept).each do |order|
			count += order.quantity

		end
		return count
	end

	def self.fiveXLBlackVest(dept)
		count = 0
		Order.where(item: "vest $35",size: "5XL", color: "black", description: "Men's", department: dept).each do |order|
			count += order.quantity

		end
		return count

	end

	def self.sixXLBlackVest(dept)
		count = 0
		Order.where(item: "vest $35",size: "6XL", color: "black", description: "Men's", department: dept).each do |order|
			count += order.quantity

		end
		return count
	end

	def self.smallNavyVest(dept)
		count = 0
		Order.where(item: "vest $35",size: "S", color: "navy* (Must be RN or MD to order navy)", description: "Men's", department: dept).each do |order|
			count += order.quantity

		end
		return count
	end

	def self.medNavyVest(dept)
		count = 0
		Order.where(item: "vest $35",size: "M", color: "navy* (Must be RN or MD to order navy)", description: "Men's", department: dept).each do |order|
			count += order.quantity

		end
		return count
	end

	def self.largeNavyVest(dept)
		count = 0
		Order.where(item: "vest $35",size: "L", color: "navy* (Must be RN or MD to order navy)", description: "Men's", department: dept).each do |order|
			count += order.quantity

		end
		return count
	end

	def self.xlNavyVest(dept)
		count = 0
		Order.where(item: "vest $35",size: "XL", color: "navy* (Must be RN or MD to order navy)", description: "Men's", department: dept).each do |order|
			count += order.quantity

		end
		return count
	end

	def self.twoXLNavyVest(dept)
		count = 0
		Order.where(item: "vest $35",size: "2XL", color: "navy* (Must be RN or MD to order navy)", description: "Men's", department: dept).each do |order|
			count += order.quantity

		end
		return count
	end

	def self.threeXLNavyVest(dept)
		count = 0
		Order.where(item: "vest $35",size: "3XL", color: "navy* (Must be RN or MD to order navy)", description: "Men's", department: dept).each do |order|
			count += order.quantity

		end
		return count
	end

	def self.fourXLNavyVest(dept)
		count = 0
		Order.where(item: "vest $35",size: "4XL", color: "navy* (Must be RN or MD to order navy)", description: "Men's", department: dept).each do |order|
			count += order.quantity

		end
		return count
	end

	def self.fiveXLNavyVest(dept)
		count = 0
		Order.where(item: "vest $35",size: "5XL", color: "navy* (Must be RN or MD to order navy)", description: "Men's", department: dept).each do |order|
			count += order.quantity

		end
		return count
	end

	def self.sixXLNavyVest(dept)
		count = 0
		Order.where(item: "vest $35",size: "6XL", color: "navy* (Must be RN or MD to order navy)", description: "Men's", department: dept).each do |order|
			count += order.quantity

		end
		return count
	end

	def self.smallBlackJacket(dept)
		count = 0
		Order.where(item: "jacket $35",size: "S", color: "black", description: "Men's", department: dept).each do |order|
			count += order.quantity

		end
		return count
	end

	def self.mediumBlackJacket(dept)
		count = 0
		Order.where(item: "jacket $35",size: "M", color: "black", description: "Men's", department: dept).each do |order|
			count += order.quantity

		end
		return count
	end

def self.largeBlackJacket(dept)
	count = 0
	Order.where(item: "jacket $35",size: "L", color: "black", description: "Men's", department: dept).each do |order|
		count += order.quantity

		end
		return count
	end

	def self.xlBlackJacket(dept)
		count = 0
Order.where(item: "jacket $35",size: "XL", color: "black", description: "Men's", department: dept).each do |order|
	count += order.quantity

		end
		return count
	end

def self.twoXLBlackJacket(dept)
	count = 0
	Order.where(item: "jacket $35",size: "2XL", color: "black", description: "Men's", department: dept).each do |order|
		count += order.quantity

		end
		return count
end

def self.threeXLBlackJacket(dept)
	count = 0
Order.where(item: "jacket $35",size: "3XL", color: "black", description: "Men's", department: dept).each do |order|
	count += order.quantity

		end
		return count
	end

	def self.fourXLBlackJacket(dept)
		count = 0
Order.where(item: "jacket $35",size: "4XL", color: "black", description: "Men's", department: dept).each do |order|
	count += order.quantity

		end
		return count
	end

	def self.fiveXLBlackJacket(dept)
		count = 0
Order.where(item: "jacket $35",size: "5XL", color: "black", description: "Men's", department: dept).each do |order|
	count += order.quantity

		end
		return count
	end

	def self.sixXLBlackJacket(dept)
		count = 0
Order.where(item: "jacket $35",size: "6XL", color: "black", description: "Men's", department: dept).each do |order|
	count += order.quantity

		end
		return count
	end

	def self.smallNavyJacket(dept)
		count = 0
		Order.where(item: "jacket $35",size: "S", color: "navy* (Must be RN or MD to order navy)", description: "Men's", department: dept).each do |order|
			count += order.quantity

		end
		return count
	end

	def self.mediumNavyJacket(dept)
		count = 0
Order.where(item: "jacket $35",size: "M", color: "navy* (Must be RN or MD to order navy)", description: "Men's", department: dept).each do |order|
	count += order.quantity

		end
		return count
	end

	def self.largeNavyJacket(dept)
		count = 0
Order.where(item: "jacket $35",size: "L", color: "navy* (Must be RN or MD to order navy)", description: "Men's", department: dept).each do |order|
	count += order.quantity

		end
		return count
	end

	def self.xlNavyJacket(dept)
		count = 0
Order.where(item: "jacket $35",size: "XL", color: "navy* (Must be RN or MD to order navy)", description: "Men's", department: dept).each do |order|
	count += order.quantity

		end
		return count
	end

	def self.twoXLNavyJacket(dept)
		count = 0
Order.where(item: "jacket $35",size: "2XL", color: "navy* (Must be RN or MD to order navy)", description: "Men's", department: dept).each do |order|
	count += order.quantity

		end
		return count
	end

	def self.threeXLNavyJacket(dept)
		count = 0
Order.where(item: "jacket $35",size: "3XL", color: "navy* (Must be RN or MD to order navy)", description: "Men's", department: dept).each do |order|
	count += order.quantity

		end
		return count
	end

	def self.fourXLNavyJacket(dept)
		count = 0
Order.where(item: "jacket $35",size: "4XL", color: "navy* (Must be RN or MD to order navy)", description: "Men's", department: dept).each do |order|
	count += order.quantity

		end
		return count
	end

	def self.fiveXLNavyJacket(dept)
		count = 0
Order.where(item: "jacket $35",size: "5XL", color: "navy* (Must be RN or MD to order navy)", description: "Men's", department: dept).each do |order|
	count += order.quantity

		end
		return count
	end

	def self.sixXLNavyJacket(dept)
		count = 0
Order.where(item: "jacket $35",size: "6XL", color: "navy* (Must be RN or MD to order navy)", description: "Men's", department: dept).each do |order|
	count += order.quantity

		end
		return count
	end
	###############################################################

def self.ladiesxsmallBlackVest(dept)
		count = 0
		Order.where(item: "vest $35",size: "XS", color: "black", description: "Women's", department: dept).each do |order|
			count += order.quantity

		end
		return count
	end
		def self.ladiessmallBlackVest(dept)
		count = 0
		Order.where(item: "vest $35",size: "S", color: "black", description: "Women's", department: dept).each do |order|
			count += order.quantity

		end
		return count
	end

	def self.ladiesmediumBlackVest(dept)
		count = 0
		Order.where(item: "vest $35",size: "M", color: "black", description: "Women's", department: dept).each do |order|
			count += order.quantity

		end
		return count
	end

	def self.ladieslargeBlackVest(dept)
		count = 0
		Order.where(item: "vest $35",size: "L", color: "black", description: "Women's", department: dept).each do |order|
			count += order.quantity

		end
		return count
	end
	def self.ladiesxlBlackVest(dept)
		count = 0
		Order.where(item: "vest $35",size: "XL", color: "black", description: "Women's", department: dept).each do |order|
			count += order.quantity

		end
		return count

	end

	def self.ladiestwoXLBlackVest(dept)
		count = 0
		Order.where(item: "vest $35",size: "2XL", color: "black", description: "Women's", department: dept).each do |order|
			count += order.quantity

		end
		return count
	end

	def self.ladiesthreeXLBlackVest(dept)
		count = 0
		Order.where(item: "vest $35",size: "3XL", color: "black", description: "Women's", department: dept).each do |order|
			count += order.quantity

		end
		return count
	end

	def self.ladiesfourXLBlackVest(dept)
		count = 0
		Order.where(item: "vest $35",size: "4XL", color: "black", description: "Women's", department: dept).each do |order|
			count += order.quantity

		end
		return count
	end

	
def self.ladiesxsmallNavyVest(dept)
		count = 0
		Order.where(item: "vest $35",size: "XS", color: "navy* (Must be RN or MD to order navy)", description: "Women's", department: dept).each do |order|
			count += order.quantity

		end
		return count
	end

	def self.ladiessmallNavyVest(dept)
		count = 0
		Order.where(item: "vest $35",size: "S", color: "navy* (Must be RN or MD to order navy)", description: "Women's", department: dept).each do |order|
			count += order.quantity

		end
		return count
	end

	def self.ladiesmedNavyVest(dept)
		count = 0
		Order.where(item: "vest $35",size: "M", color: "navy* (Must be RN or MD to order navy)", description: "Women's", department: dept).each do |order|
			count += order.quantity

		end
		return count
	end

	def self.ladieslargeNavyVest(dept)
		count = 0
		Order.where(item: "vest $35",size: "L", color: "navy* (Must be RN or MD to order navy)", description: "Women's", department: dept).each do |order|
			count += order.quantity

		end
		return count
	end

	def self.ladiesxlNavyVest(dept)
		count = 0
		Order.where(item: "vest $35",size: "XL", color: "navy* (Must be RN or MD to order navy)", description: "Women's", department: dept).each do |order|
			count += order.quantity

		end
		return count	
	end

	def self.ladiestwoXLNavyVest(dept)
		count = 0
		Order.where(item: "vest $35",size: "2XL", color: "navy* (Must be RN or MD to order navy)", description: "Women's", department: dept).each do |order|
			count += order.quantity

		end
		return count
	end

	def self.ladiesthreeXLNavyVest(dept)
		count = 0
		Order.where(item: "vest $35",size: "3XL", color: "navy* (Must be RN or MD to order navy)", description: "Women's", department: dept).each do |order|
			count += order.quantity

		end
		return count
	end

	def self.ladiesfourXLNavyVest(dept)
		count = 0
		Order.where(item: "vest $35",size: "4XL", color: "navy* (Must be RN or MD to order navy)", description: "Women's", department: dept).each do |order|
			count += order.quantity

		end
		return count
	end

	def self.ladiesxsmallBlackJacket(dept)
		count = 0
		Order.where(item: "jacket $35",size: "XS", color: "black", description: "Women's", department: dept).each do |order|
			count += order.quantity

		end
		return count
	end

	def self.ladiessmallBlackJacket(dept)
		count = 0
		Order.where(item: "jacket $35",size: "S", color: "black", description: "Women's", department: dept).each do |order|
			count += order.quantity

		end
		return count
	end

	def self.ladiesmediumBlackJacket(dept)
		count = 0
		Order.where(item: "jacket $35",size: "M", color: "black", description: "Women's", department: dept).each do |order|
			count += order.quantity

		end
		return count
	end

def self.ladieslargeBlackJacket(dept)
	count = 0
	Order.where(item: "jacket $35",size: "L", color: "black", description: "Women's", department: dept).each do |order|
		count += order.quantity

		end
		return count
	end

	def self.ladiesxlBlackJacket(dept)
		count = 0
Order.where(item: "jacket $35",size: "XL", color: "black", description: "Women's", department: dept).each do |order|
	count += order.quantity

		end
		return count
	end

def self.ladiestwoXLBlackJacket(dept)
	count = 0
	Order.where(item: "jacket $35",size: "2XL", color: "black", description: "Women's", department: dept).each do |order|
		count += order.quantity

		end
		return count
end

def self.ladiesthreeXLBlackJacket(dept)
	count = 0
Order.where(item: "jacket $35",size: "3XL", color: "black", description: "Women's", department: dept).each do |order|
	count += order.quantity

		end
		return count
	end

	def self.ladiesfourXLBlackJacket(dept)
		count = 0
Order.where(item: "jacket $35",size: "4XL", color: "black", description: "Women's", department: dept).each do |order|
	count += order.quantity

		end
		return count
	end

	
def self.ladiesxsmallNavyJacket(dept)
		count = 0
		Order.where(item: "jacket $35",size: "XS", color: "navy* (Must be RN or MD to order navy)", description: "Women's", department: dept).each do |order|
			count += order.quantity

		end
		return count
	end

	def self.ladiessmallNavyJacket(dept)
		count = 0
		Order.where(item: "jacket $35",size: "S", color: "navy* (Must be RN or MD to order navy)", description: "Women's", department: dept).each do |order|
			count += order.quantity

		end
		return count
	end

	def self.ladiesmediumNavyJacket(dept)
		count = 0
Order.where(item: "jacket $35",size: "M", color: "navy* (Must be RN or MD to order navy)", description: "Women's", department: dept).each do |order|
	count += order.quantity

		end
		return count
	end

	def self.ladieslargeNavyJacket(dept)
		count = 0
Order.where(item: "jacket $35",size: "L", color: "navy* (Must be RN or MD to order navy)", description: "Women's", department: dept).each do |order|
	count += order.quantity

		end
		return count
	end

	def self.ladiesxlNavyJacket(dept)
		count = 0
Order.where(item: "jacket $35",size: "XL", color: "navy* (Must be RN or MD to order navy)", description: "Women's", department: dept).each do |order|
	count += order.quantity

		end
		return count
	end

	def self.ladiestwoXLNavyJacket(dept)
		count = 0
Order.where(item: "jacket $35",size: "2XL", color: "navy* (Must be RN or MD to order navy)", description: "Women's", department: dept).each do |order|
	count += order.quantity

		end
		return count
	end

	def self.ladiesthreeXLNavyJacket(dept)
		count = 0
	
Order.where(item: "jacket $35",size: "3XL", color: "navy* (Must be RN or MD to order navy)", description: "Women's", department: dept).each do |order|
	count += order.quantity

		end
		return count
	end
		
	

	def self.ladiesfourXLNavyJacket(dept)
		count = 0
Order.where(item: "jacket $35",size: "4XL", color: "navy* (Must be RN or MD to order navy)", description: "Women's", department: dept).each do |order|
	count += order.quantity

		end
		return count
	end

	
	
end
