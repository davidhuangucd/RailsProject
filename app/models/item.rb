class Item < ApplicationRecord
  belongs_to :user
  validates :user, presence: true
  validates :text, presence: true
end
