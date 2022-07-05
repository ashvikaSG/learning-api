class Subject < ApplicationRecord
  belongs_to :grade
  has_ancestry
  has_many :chapters, dependent: :destroy
  validates_presence_of :name, :colour, :logo
end
