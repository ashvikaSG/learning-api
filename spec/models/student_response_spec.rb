require 'rails_helper'

RSpec.describe StudentResponse, type: :model do
  it { should belong_to(:attempt) }
  it { should belong_to(:question) }
  
  it { should validate_presence_of(:answer) }
  it { should validate_presence_of(:answered) }
  it { should validate_presence_of(:marked_for_review) }
  it { should validate_presence_of(:time_taken) }
end