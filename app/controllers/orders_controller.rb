class OrdersController < ApplicationController
before_action :set_order, only: [:show, :edit, :update, :destroy]
# before_action: set_order_line, only: [:show, :edit, :update, :destroy]
  def index
    @orders = Order.all.order(:updated_at)
  end

  def show
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)
     if @order.save!
       redirect_to order_path(@order)
     else
       render :new
     end
  end

  def edit
  end

  def update
     if @order.update(order_params)
      redirect_to order_path
    else
      render :edit
     end
  end

  def destroy
    @order.destroy
    redirect_to orders_path
  end


private

 def set_order
      @orders = Order.find(params[:id])
 end
end
