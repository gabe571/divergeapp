class Purchase < ApplicationRecord
    belongs_to :game
    belongs_to :user
    has_many :reviews
    validates :game_id, uniqueness: true
    validates :user_id, uniqueness: true
end