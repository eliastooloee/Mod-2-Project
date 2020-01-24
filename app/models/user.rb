class User < ApplicationRecord
    has_many :user_rocks
    has_many :rocks, through: :user_rocks

    validates :username, presence: true
    validates :username, uniqueness: true
end