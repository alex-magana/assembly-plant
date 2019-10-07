require 'rails_helper'

RSpec.describe Specialty, type: :model do
  it { should belong_to(:plant) }
  it { should belong_to(:vehicle) }
end
