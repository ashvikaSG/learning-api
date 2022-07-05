require 'rails_helper'

RSpec.describe Question, type: :model do
  it { should belong_to(:exercise) }
  it { should have_many(:student_responses).dependent(:destroy) }


  it { should validate_presence_of(:description) }
  it { should validate_presence_of(:correct_option) }
  it { should validate_presence_of(:option_a) }
  it { should validate_presence_of(:option_b) }
  it { should validate_presence_of(:option_c) }
  it { should validate_presence_of(:option_d) }
  it { should validate_presence_of(:solution) }
end
