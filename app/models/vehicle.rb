class Vehicle < ApplicationRecord
  has_many :specialties, dependent: :destroy
  has_many :plants, through: :specialties

  validates_presence_of :name, :description, :price
end
