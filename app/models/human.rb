class Human < ApplicationRecord
    validates_uniqueness_of :name
end
