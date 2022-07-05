require 'rails_helper'

RSpec.describe Chapter, type: :model do
  it { should belong_to(:subject) }
  it { should have_many(:contents).dependent(:destroy) }
  it { should have_many(:exercises).dependent(:destroy) }

  it { should validate_presence_of(:title) }
end
