class Note < ApplicationRecord
  belongs_to :student
  belongs_to :content
  validates_presence_of :notes_taken
end
