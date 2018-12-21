class Post < ApplicationRecord
  belongs_to :user

  has_one_attached :image

  validate :image_presence
  def image_presence
    errors.add(:image, "Can't be blank") unless image.attached?
  end
end
