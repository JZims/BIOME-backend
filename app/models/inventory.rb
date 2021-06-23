class Inventory < ApplicationRecord
    belongs_to :user
    belongs_to :beverage

validates :user, uniqueness: { scope: :beverage }
validates :beverage_id, presence: true


end
