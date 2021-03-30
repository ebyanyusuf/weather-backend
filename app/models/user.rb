class User < ApplicationRecord
    has_one :location
    has_many :activities
    
end
