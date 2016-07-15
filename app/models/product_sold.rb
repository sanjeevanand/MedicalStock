class ProductSold < ActiveRecord::Base
  belongs_to :item
  belongs_to :sell
end
