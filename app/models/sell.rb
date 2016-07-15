class Sell < ActiveRecord::Base
  belongs_to :customer
  has_many   :product_solds
end
