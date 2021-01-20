class Comment < ApplicationRecord
  validates :text, presence: true
  validates :user, presence: true
  validates :text, presence: true
 
  belongs_to :post
  belongs_to :user
end
