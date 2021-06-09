class User < ApplicationRecord
    has_one :inventory
    has_many :beverages, through: :inventory
end
