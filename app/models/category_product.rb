class CategoryProduct < ApplicationRecord
  belongs to :category
  belongs to :product
end
