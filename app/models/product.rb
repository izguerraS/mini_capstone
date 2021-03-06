class Product < ApplicationRecord
  belongs_to :supplier
  has_many :images
  has_many :orders
  

  # validates :name, presence: true
  # validates :name, uniqueness: true
  # validates :price, presence: true
  # validates :price, numericality: { greater_than: 0 }
  # validates :description, presence: true
  # validates :description, length: { in: 10..500 }
  
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


  def supplier
    Supplier.find_by(id: supplier_id)
  end



end
#  def image_url