class ProductCategory < ApplicationRecord
  has_and_belongs_to_many :product
end
