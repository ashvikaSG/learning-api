class StudentResponse < ApplicationRecord
  belongs_to :attempt
  belongs_to :question

  validates_presence_of :answer, :answered, :marked_for_review, :time_taken
end
