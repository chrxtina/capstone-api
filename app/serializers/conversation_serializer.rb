class ConversationSerializer < ActiveModel::Serializer
  attributes :id, :user1, :user2, :name, :messages

  def messages
    object.messages.pluck(:id)
  end
end
