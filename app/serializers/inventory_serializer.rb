class InventorySerializer < ActiveModel::Serializer
  attributes :id

  belongs_to :beverage

end
