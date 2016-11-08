class ItemSerializer < ActiveModel::Serializer
  attributes :id, :title, :location, :body, :address, :category, :user
  has_one :user

  def category
    object.category_id
  end

  def user
    object.user_id
  end
end
