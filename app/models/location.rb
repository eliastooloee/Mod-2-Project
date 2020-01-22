class Location < ApplicationRecord
    has_many :rock_locations
    has_many :rocks, through: :rock_locations
end