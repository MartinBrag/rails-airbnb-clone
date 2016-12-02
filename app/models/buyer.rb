class Buyer < ApplicationRecord
  validates :username, presence: true
  validates :password, presence: true
  #validates :email, presence: true, uniqueness: true
  validates :city, presence: true
  has_many :orders

end
