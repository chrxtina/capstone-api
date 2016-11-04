class ItemSerializer < ActiveModel::Serializer
  attributes :id, :title, :location, :body, :address
  has_one :user
end
