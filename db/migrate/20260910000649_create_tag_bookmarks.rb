class CreateTagBookmarks < ActiveRecord::Migration[8.0]
  def change
    create_table :tag_bookmarks do |t|
      t.references :user, null: false, foreign_key: true
      t.references :tag, null: false, foreign_key: true

      t.timestamps
    end
  end
end
