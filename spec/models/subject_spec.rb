require 'rails_helper'

RSpec.describe Subject, type: :model do
  it { should belong_to(:grade) }
  it { should have_many(:chapters).dependent(:destroy) }

  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:colour) }
  it { should validate_presence_of(:logo) }
end
