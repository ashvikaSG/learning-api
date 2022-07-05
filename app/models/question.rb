class Question < ApplicationRecord
  belongs_to :exercise
  has_many :student_responses, dependent: :destroy


  validates_presence_of :description, :correct_option, :option_a, :option_b, :option_c, :option_d, :solution
end
