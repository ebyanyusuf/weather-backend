class Activity < ApplicationRecord
    belongs_to :location
    belongs_to :users
end
