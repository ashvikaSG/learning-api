require 'rails_helper'

RSpec.describe Progress, type: :model do
  it { should belong_to(:content) }
  it { should belong_to(:student) }

  it { should validate_presence_of(:status) }
end
