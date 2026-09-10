class AddUniqueIndexes < ActiveRecord::Migration[8.0]
  def change
    add_index :reactions, [:user_id, :post_id], unique: true
    add_index :reposts, [:user_id, :post_id], unique: true
    add_index :tag_bookmarks, [:user_id, :tag_id], unique: true
    add_index :post_tags, [:post_id, :tag_id], unique: true

    remove_index :tags, :name
    add_index :tags, :name, unique: true
  end
end