class Location < ApplicationRecord
    has_many :weathers
    has_many :activities
    belongs_to :users, optional: true
end
