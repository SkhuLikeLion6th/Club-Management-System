class Club < ApplicationRecord
    has_many :club_members
    has_many :posts
end
