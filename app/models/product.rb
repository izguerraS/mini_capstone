class Product < ApplicationRecord
  
  
  def is_discounted
    if price < 10
      "true"
    else
      "false"
  end
end

  def product_tax
    price * 0.09
 end


def total
 price + product_tax
 end
end