class ItemSerializer < ActiveModel::Serializer
  attributes :id, :title, :location, :body, :address, :category
  has_one :user
end
