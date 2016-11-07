class ItemSerializer < ActiveModel::Serializer
  attributes :id, :title, :location, :body, :address, :category
  has_one :user
  has_one :category

  def category
    object.category.id
  end
end
