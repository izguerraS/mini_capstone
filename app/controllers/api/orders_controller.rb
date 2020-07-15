class Api::OrdersController < ApplicationController

  def order
    @order = Order.where("price < ?", 200)
    render 'show.json.jb'
   end
end
