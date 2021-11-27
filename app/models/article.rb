class Article < ApplicationRecord
  validates  :content, length:  {maximum: 5000}, presence:   true
  validates  :title, length:  {maximum: 100}, presence:   true
  belongs_to :user1
end
