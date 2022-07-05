require 'rails_helper'

RSpec.describe Grade, type: :model do
  # Association test
  # ensure an grade record belongs to a single board record
  it { should belong_to(:board) }
  it { should have_many(:subjects).dependent(:destroy) } ####
  it { should have_many(:students).dependent(:destroy) } ####
  # Validation test
  # ensure column is present before saving
  it { should validate_presence_of(:name) }
end
