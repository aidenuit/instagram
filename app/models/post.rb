class Post < ApplicationRecord
	belongs_to :user

	has_one_attached :image

	validates :image_presence

	def image_prsence
		errors.add(:image, "Can't be blank!") unless image.attached?
	end
end
