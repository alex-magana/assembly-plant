class Plant < ApplicationRecord
  has_many :specialties, dependent: :destroy
  has_many :vehicles, through: :specialties

  validates_presence_of :name, :latitude, :longitude,
                        :opening_time, :closing_time
end
