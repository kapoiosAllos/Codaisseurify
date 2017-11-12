class Artist < ApplicationRecord
  has_many :songs, dependent: :destroy
  mount_uploader :image, ImageUploader

  validates :name, presence: { message: "We dont accept nameless artists" }
  validates :name, length: {maximum: 30, message: "Maximum characters allowed is 30" }
  validates :name, uniqueness: { message: "%{value} allready exists" }

  def self.order_list(sort_order)
    if sort_order == "newest" || sort_order.blank?
      order('created_at DESC')
    elsif sort_order == "name_ascending"
      order('name ASC')
    elsif sort_order == "name_descending"
      order('name DESC')
    else
      order('created_at ASC')
    end
  end

end
