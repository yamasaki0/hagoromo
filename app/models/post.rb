class Post < ApplicationRecord
belongs_to :user

has_one_attached :image

has_many :post_tags, dependent: :destroy
has_many :tags, through: :post_tags

has_many :reactions, dependent: :destroy
has_many :reposts, dependent: :destroy
end
