class User < ActiveRecord::Base
  include Authentication
  has_many :examples
  has_many :items
  has_many :messages, dependent: :destroy
end
