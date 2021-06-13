class User < ApplicationRecord
    has_secure_password

    validates :username, presence: true, uniqueness: true
    validates :password, presence: true

    has_one :inventory
    has_many :beverages, through: :inventory
end
