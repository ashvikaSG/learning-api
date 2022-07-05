require 'rails_helper'

RSpec.describe Exercise, type: :model do
  it { should belong_to(:chapter) }
  it { should have_many(:attempts).dependent(:destroy) }
  it { should have_many(:questions).dependent(:destroy) }

  it{ should validate_presence_of(:title) }
  it{ should validate_presence_of(:duration) }
  it{ should validate_presence_of(:number_of_questions) }
  it{ should validate_presence_of(:highest_score) }
end
