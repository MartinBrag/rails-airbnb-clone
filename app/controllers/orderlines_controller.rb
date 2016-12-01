class OrderlinesController < ApplicationController
  def index
    @orderlines = Orderline.all
  end

  def show
    @orderline = Orderline.find(params[:id])
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
end
