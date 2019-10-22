class Admin::OrdersController < ApplicationController
	before_action :authenticate_user!

	def new
		@order = Order.new
	end

	def show
		@order = Order.find(params[:id])
	end

	def create
		@order = current_user.orders.create(order_params)

		redirect_to admin_order_path(@order)
	end

	private 

	def order_params
		params.require(:order).permit(:first_name, :last_name, :item, :size, :quantity, :color, :description, :cost)

	end

end
