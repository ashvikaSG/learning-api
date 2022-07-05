require 'rails_helper'

RSpec.describe Content, type: :model do
  it { should belong_to(:chapter) }
  it { should have_many(:notes).dependent(:destroy) }
  it { should have_many(:votes).dependent(:destroy) }
  it { should have_many(:progresses).dependent(:destroy) }

  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:description) }
  it { should validate_presence_of(:type) }
  it { should validate_presence_of(:link) }
end
