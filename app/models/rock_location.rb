class RockLocation < ApplicationRecord
    belongs_to :rock
    belongs_to :location
end