class Seller < ApplicationRecord
  has_many :promotions

  geocoded_by :full_address
  after_validation :geocode, if: :full_address_changed?

  validates :username, presence: true, uniqueness: true
  validates :password, presence: true
  #validates :email, presence: true, uniqueness: true
  validates :city, presence: true
  validates :phonenumber, presence: true, uniqueness: true
  validates :category, presence: true

  def full_address_conversion
    return "#{self.street_number}, #{self.street}, #{self.city}, #{self.city_postcode}"
  end
end
