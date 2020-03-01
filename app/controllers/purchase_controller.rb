class PurchaseController < ApplicationController
def show
	
	 @departments = Order.where(department: Order.pluck(:department))
end
end
