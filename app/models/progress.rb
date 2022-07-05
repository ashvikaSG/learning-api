class Progress < ApplicationRecord
  belongs_to :student
  belongs_to :content

  validates_presence_of :status
end
