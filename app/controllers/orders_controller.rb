class OrdersController < ApplicationController
	before_action_authenticate_user!

def new
	@order = Order.new
end	
def create
		@order = current_user.orders.create(order_params)
		if @order.valid?
			redirect_to order_path(@order)
		else
			render :new, status: :unprocessable_entity
		end
	end

	private 

	def order_params
		params.require(:order).permit(:first_name, :last_name, :item, :size, :quantity, :color, :description, :cost)

	end


end
