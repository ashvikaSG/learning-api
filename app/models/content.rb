class Content < ApplicationRecord
  belongs_to :chapter
  has_many :notes, dependent: :destroy
  has_many :votes, dependent: :destroy
  has_many :progresses, dependent: :destroy

  validates_presence_of :title, :description, :link, :type
end
