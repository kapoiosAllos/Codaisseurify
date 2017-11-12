class Artist < ApplicationRecord
  has_many :songs, dependent: :destroy

  mount_uploader :image, ImageUploader

  validates :name, presence: { message: "We dont accept nameless artists" }
  validates :name, length: {maximum: 30, message: "Maximum characters allowed is 30" }
  validates :name, uniqueness: { message: "%{value} allready exists" }
end
