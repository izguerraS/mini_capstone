class Order < ApplicationRecord
  belongs_to :user
  belongs_to :product

  def order
    @orders.all
  end

end
