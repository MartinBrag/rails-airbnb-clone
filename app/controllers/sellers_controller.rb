class SellersController < ApplicationController
  def index
  end

  def show
    @seller = Seller.find(params[:sellers_id])
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
