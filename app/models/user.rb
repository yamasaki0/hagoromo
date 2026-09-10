class User < ApplicationRecord
    # user.rb
has_many :posts
has_many :reactions
has_many :reposts
has_many :tag_bookmarks
has_many :bookmarked_tags, through: :tag_bookmarks, source: :tag
end
