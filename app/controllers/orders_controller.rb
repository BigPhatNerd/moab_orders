class OrdersController < ApplicationController
  skip_before_action :verify_authenticity_token, :only => :create
  before_action :authenticate_user!

  def index
    @orders = Order.all
     @department = Order.where(department: Order.pluck(:department))

  end
  def purchase
  end
  def new
    @order = Order.new
    
  end

  def show
    @order = Order.find(params[:id])
    @department = Order.where(department: Order.pluck(:department))
  end

  


  def destroy
    @order = Order.find(params[:id])
    @order.destroy
    redirect_to orders_path

  end

  def create
    if current_user && current_user.admin?

      current_user.orders.create(order_params)

      redirect_to order_path(Order.last.id)
return
   end
    if current_user && !current_user.admin?
 current_user.orders.create(order_params)
        # Amount in cents
        @last_order = Order.last

        @amount = (@last_order.cost * 100).to_i 


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
      end
      

      redirect_to order_path(Order.last.id)

    rescue Stripe::CardError => e 
         flash[:error] = e.message
      @last_order.delete     
       redirect_to root_path
    end
    

    private 

    def order_params
      params.require(:order).permit(:first_name, :last_name, :item, :size, :quantity, :color, :description, :cost, :department)

    end
    def current_order
@current_order ||=Order.find(params[:id])
    end

  end
