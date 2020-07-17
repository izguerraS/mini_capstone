class Order < ApplicationRecord
  belongs_to :user
  belongs_to :product

  def order
    @orders.find_by(orders: order)
  end

end
