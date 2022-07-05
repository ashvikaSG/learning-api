class Board < ApplicationRecord
    # model association
    has_ancestry
    has_many :grades, dependent: :destroy
    # validations
    validates_presence_of :name, :logo, :description
end
