class Specialty < ApplicationRecord
  belongs_to :plant
  belongs_to :vehicle
end
