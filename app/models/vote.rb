class Vote < ApplicationRecord
  belongs_to :student
  belongs_to :content
  
  validates_presence_of :vote_type
end
