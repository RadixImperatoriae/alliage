class Product < ApplicationRecord
  has_and_belongs_to_many :product_category
end
