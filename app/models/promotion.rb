class Promotion < ApplicationRecord

  attr_accessor :title

  belongs_to :seller
  has_many :orderlines
  validates :initialquantity, numericality:{greater_than: 0}, presence: true
  validates :code, presence: true
  #validates :promotionstatus, default: true
  validates :producttype, presence: true
  validates :unit, presence: true
  validates :title, presence: true
  validates :discount, numericality: {less_than_or_equal_to: 100 }
  validates :priceperunit, presence: true
end
