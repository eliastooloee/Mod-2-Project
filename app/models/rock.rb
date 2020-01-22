class Rock < ApplicationRecord
    has_many :rock_locations
    has many :locations, through: :rock_locations
end