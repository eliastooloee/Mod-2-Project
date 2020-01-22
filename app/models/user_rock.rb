class UserRock < ApplicationRecord
    belongs_to :user
    belongs_to :rock
end