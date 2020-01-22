class Rock < ApplicationRecord
    has_many :rock_locations
    has_many :locations, through: :rock_locations
end