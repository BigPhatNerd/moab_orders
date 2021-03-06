class Admin::OrdersController < ApplicationController
	skip_before_action :verify_authenticity_token, :only => :create
	before_action :authenticate_user!

	def index
		@orders = Order.all

	end
	def new
		@order = Order.new
		
	end

	def show
		@order = Order.find(params[:id])
	end

	def create
		@order = current_user.orders.create(order_params)
		
			
			  # Amount in cents
   
	@amount = (@order.price * 100).to_i	
	

    customer = Stripe::Customer.create(
      email: params[:stripeEmail],
      source: params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      customer: customer.id,
      amount: @amount,
      description: 'Rails Stripe customer',
      currency: 'usd'
    )
   
    redirect_to admin_order_path(@order)

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to root_path
		
	end

	private 

	def order_params
		params.require(:order).permit(:first_name, :last_name, :item, :size, :quantity, :color, :description, :cost)

	end

end
