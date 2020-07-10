class User < ApplicationRecord
    has_many :purchases
    has_many :games, through: :purchases
    validates :name, confirmation: true
    validates :password, confirmation: true
    has_secure_password
   
end
