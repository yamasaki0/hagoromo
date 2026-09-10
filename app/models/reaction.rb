class Reaction < ApplicationRecord
belongs_to :user
belongs_to :post

enum :kind, {
  eeyan: 0,
  monogottsu_eeyan: 1
}
end
