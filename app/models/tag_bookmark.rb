class TagBookmark < ApplicationRecord
# tag_bookmark.rb
belongs_to :user
belongs_to :tag
end
