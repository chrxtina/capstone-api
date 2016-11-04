class AddColumnToItems < ActiveRecord::Migration
  def change
    add_column :items, :category, :string
  end
end
