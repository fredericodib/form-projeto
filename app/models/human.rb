class Human < ApplicationRecord
    validates :name, uniqueness: true
    validates :name, :country, presence: true
    validates :skill, :knowledge, inclusion: { in: [ true, false ] }
end
