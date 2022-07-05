require 'rails_helper'

RSpec.describe Attempt, type: :model do
  it { should belong_to(:student) }
  it { should belong_to(:exercise) }
  it { should have_many(:student_responses).dependent(:destroy) }

  it { should validate_presence_of(:day) }
  it { should validate_presence_of(:score) }
end
