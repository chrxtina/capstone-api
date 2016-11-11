class CreateConversations < ActiveRecord::Migration
  def change
    create_table :conversations do |t|
      t.integer :user1
      t.integer :user2
      t.string :name

      t.timestamps null: false
    end
  end
end
