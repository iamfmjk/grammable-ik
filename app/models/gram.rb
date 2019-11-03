class Gram < ApplicationRecord
  belongs_to :user
  has_many :comments
  mount_uploader :picture, PictureUploader
  validates :message, presence: true
  validates :picture, presence: true

end
