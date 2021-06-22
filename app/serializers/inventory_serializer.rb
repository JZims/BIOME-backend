class InventorySerializer < ActiveModel::Serializer
  attributes :id, :quantity, :user_id

  belongs_to :beverage

  def beverage_quantity
   
  end

end
