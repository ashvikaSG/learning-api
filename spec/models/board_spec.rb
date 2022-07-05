require 'rails_helper'

RSpec.describe Board, type: :model do
  # Association test
  # ensure Board model has a 1:m relationship with the Grade model
  it { should have_many(:grades).dependent(:destroy) }
  # Validation tests
  # ensure columns are present before saving
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:logo) }
  it { should validate_presence_of(:description) }
end
