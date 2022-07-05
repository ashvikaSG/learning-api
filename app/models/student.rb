class Student < ApplicationRecord
  belongs_to :grade
  has_many :notes, dependent: :destroy
  has_many :votes, dependent: :destroy
  has_many :attempts, dependent: :destroy

  validates_presence_of :name, :email, :mobile, :dob, :profile_pic, :login_progress
end
