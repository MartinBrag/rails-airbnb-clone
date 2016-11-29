class PromotionsController < ApplicationController
 before_action :set_promotion, only: [:show, :edit, :update, :destroy]

  def index #--------------------------------------------------------
    @promotions = Promotion.all.order(:duration)
  end

  def show #---------------------------------------------------------
    @promotion = Promotion.new
  end

  def new #----------------------------------------------------------
    @promotion = Promotion.new
  end

  def create #-------------------------------------------------------
    @promotion = Promotion.new(promotion_params)
    if @promotion.save
      redirect_to promotion_path(@promotion)
    else
      render :new
    end
  end

  def edit #----------------------------------------------------------
  end

  def update #--------------------------------------------------------
    if @promotion.update(promotion_params)
      redirect_to promotions_path
    else
      render :edit
    end
  end

  def destroy #--------------------------------------------------------
    @promotion.destroy
    redirect_to promotions_path
  end


  private

    def set_promotion
      @promotion = Promotion.find(params[:id])
    end

    def promotion_params

      params.require(:promotion).permit(:initialquantity, :remainingquantity, :description, :unit, :duration, :promotionstatus, :producttype, :code)
    end

end