class Grade < ApplicationRecord
  belongs_to :board
  has_ancestry
  has_many :subjects, dependent: :destroy
  has_many :students, dependent: :destroy

  validates_presence_of :name
end
