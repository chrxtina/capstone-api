class Item < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
end
