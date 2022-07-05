require 'rails_helper'

RSpec.describe Note, type: :model do
  it { should belong_to(:student) }
  it { should belong_to(:content) }
  it { should validate_presence_of(:notes_taken) }
end
