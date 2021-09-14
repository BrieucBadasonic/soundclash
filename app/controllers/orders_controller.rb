class OrdersController < ApplicationController

  def index
    @orders = Order.all
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)
    if @order.save
      redirect_to succes_path
    else
      render :new
    end
  end

  private

  def order_params
    params.require(:order).permit(:first_name,
                                  :last_name,
                                  :address,
                                  :postcode,
                                  :city,
                                  :country,
                                  :order_number)
  end
end
