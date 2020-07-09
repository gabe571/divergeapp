class Game < ApplicationRecord
    belongs_to :game_studio
    has_many :purchases
    has_many :reviews, through: :purchases
    has_many :users, through: :purchases
end
