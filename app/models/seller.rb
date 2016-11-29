class Seller < ApplicationRecord
  validates :username, presence: true, uniqueness: true
  validates :password, presence: true
  validates :email, presence: true, uniqueness: true
  validates :city, presence: true
  validates :phonenumber, presence: true, uniqueness: true
  validates :category, presence: true
  has_many :promotions
end
