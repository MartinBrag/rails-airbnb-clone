class OrderLine < ApplicationRecord
  belongs_to :order
  belongs_to :promotion
end
