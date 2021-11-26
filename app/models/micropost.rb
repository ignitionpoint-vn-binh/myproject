class Micropost < ActiveRecord::Base
	belongs_to :user

	default_scope -> { order(created_at: :desc) }

	validates :content, presence: true, length: { maximum: 140 }

	has_one_attached :image
	validates :image, content_type: { in: %w[image/jpeg image/gif image/png],
																		message: "must be a valid image format" },
						size: { less_than: 5.megabytes,
										message: "should be less than 5MB" }
# Returns a resized image for display.
	def display_image
		image.variant(resize_to_limit: [500, 500])
	end
end