class Promotion < ApplicationRecord
  belongs_to :seller
  has_many :orderlines

  validates :initialquantity, numericality:{greater_than: 0}, presence: true
  validates :code, presence: true
  #validates :promotionstatus, default: true
  validates :producttype, presence: true
  validates :unit, presence: true
end
