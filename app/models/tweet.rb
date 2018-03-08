class Tweet < ApplicationRecord
  belongs_to :user
  validates :user, presence: true
  validates :content, presence: true, length: {maximum: 140}
  has_attached_file :image, styles: {
    thumb: '100x100>',
    square: '200x200#',
    medium: '300x300>',
    large: '500x500'
  }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

end
