class OrderlinesController < ApplicationController
  before_action :orderline_for_user
  before_action :set_order
  def index
    @orderlines = OrderLine.where(order_id: @order.id)
  end

  def show
    @orderline = OrderLine.find(params[:id])
  end

  def new
    @orderline = Order.new
  end

  # def create
  #   @orderline = Order.create(orderline_params)
  # end

  def create_order
    order = Order.find(params[:order_id])
    order.buyer_id = params[:user_id]
    order.status = "To be confirmed"
    order.save!
    promotion = Promotion.find(params[:promotion_id])
    @orderline = OrderLine.create(order_id: order.id, promotion_id: promotion.id, status: "To be confirmed")
  end

  def edit
  end

  def update
  end

  def destroy
  end
 private
  def orderline_for_user
    @user = User.find(params[:user_id])
  end

  def set_order
    @order = Order.find(params[:order_id])
  end

  def orderline_params
    params.require(:order_line).permit(:order_id)
  end

end
