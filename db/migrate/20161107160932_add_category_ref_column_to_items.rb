class AddCategoryRefColumnToItems < ActiveRecord::Migration
  def change
    add_reference :items, :category, index: true, foreign_key: true
  end
end
