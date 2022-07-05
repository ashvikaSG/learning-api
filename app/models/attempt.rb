class Attempt < ApplicationRecord
  belongs_to :student
  belongs_to :exercise
  has_many :student_responses, dependent: :destroy

  validates_presence_of :day, :score
end
