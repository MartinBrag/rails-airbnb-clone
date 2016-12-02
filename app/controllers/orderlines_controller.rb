class OrderlinesController < ApplicationController
  before_action :orderline_for_buyer
  before_action :set_order
  def index
    @orderlines = OrderLine.where(order_id: @order.id)
  end

  def show
    @orderline = OrderLine.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
 private
  def orderline_for_buyer
    @buyer = Buyer.find(params[:buyer_id])
  end
  def set_order
    @order = Order.find(params[:order_id])
  end

end
