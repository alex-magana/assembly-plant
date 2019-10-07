require 'rails_helper'

RSpec.describe Plant, type: :model do
  # Association test
  # ensure Plant model has a m:m relationship with the Vehicle model
  # through Specialty
  # .dependent(:destroy) is invoked in a has_many association to delete
  # children and grandchildren objects in the Specialty model
  it { should have_many(:specialties).dependent(:destroy) }
  it { should have_many(:vehicles).through(:specialties) }

  # Validation tests
  # ensure columns title and created_by are present before saving
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:latitude) }
  it { should validate_presence_of(:longitude) }
  it { should validate_presence_of(:opening_time) }
  it { should validate_presence_of(:closing_time) }
end
