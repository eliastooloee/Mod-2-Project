class Rock < ApplicationRecord
    has_many :rock_locations
    has_many :locations, through: :rock_locations

    accepts_nested_attributes_for :rock_locations
    accepts_nested_attributes_for :locations
end