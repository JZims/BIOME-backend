class InventorySerializer < ActiveModel::Serializer
  attributes :id, :quantity, :user_id, :beverage_id


end
