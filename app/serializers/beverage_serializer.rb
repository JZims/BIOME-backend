class BeverageSerializer < ActiveModel::Serializer
  attributes :id, :proprietary_name, :producer_name, :vintage, :image_url, :bin

  has_many :inventories
  has_many :users, through: :inventories

end
