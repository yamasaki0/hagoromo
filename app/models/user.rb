class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :registerable,
         :recoverable,
         :rememberable,
         :validatable
  # user.rb
  has_many :posts
  has_many :reactions
  has_many :reposts
  has_many :tag_bookmarks
  has_many :bookmarked_tags, through: :tag_bookmarks, source: :tag
end
