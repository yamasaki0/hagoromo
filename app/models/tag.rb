class Tag < ApplicationRecord
    # tag.rb
has_many :post_tags, dependent: :destroy
has_many :posts, through: :post_tags

has_many :tag_bookmarks, dependent: :destroy
end
