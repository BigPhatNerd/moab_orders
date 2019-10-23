class Order < ApplicationRecord
	belongs_to :user

	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :item, presence: true
	validates :size, presence: true
	validates :quantity, presence: true
	validates :color, presence: true
	validates :cost, presence: true, numericality: {greater_than_or_equal_to: 0}

	
end
