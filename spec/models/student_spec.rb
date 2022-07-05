require 'rails_helper'

RSpec.describe Student, type: :model do
  # Association test
  # ensure an student record belongs to a single grade record
  it { should belong_to(:grade) }
  it { should have_many(:notes).dependent(:destroy) }
  it { should have_many(:votes).dependent(:destroy) }
  it { should have_many(:attempts).dependent(:destroy) }


  # Validation test
  # ensure column name is present before saving
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:mobile) }
  it { should validate_presence_of(:dob) }
  it { should validate_presence_of(:profile_pic) }
  it { should validate_presence_of(:login_progress) }
end
