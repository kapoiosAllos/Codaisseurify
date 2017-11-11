class Song < ApplicationRecord
  belongs_to :artist

  validates :name, presence: {message: "Song name must exists"}
  validates :duration, numericality: { only_integer: true, greater_than: 1, less_than: 600 }
end
