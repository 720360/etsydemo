class Listing < ActiveRecord::Base
	has_attached_file :image, :styles => { medium: "200x>", thumb: "100x100>" }, :default_url => "missing.jpg"
	# validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
	# validates_attachment_file_name :image, :matches => [/png\Z/, /jpe?g\Z/, /gif\Z/]
	# do_not_validate_attachment_file_type
	# validates_attachment_content_type :image, :content_type => [/png\Z/, /jpe?g\Z/, /gif\Z/]
	# validates :image, attachment_presence: true
	# validates_with AttachmentPresenceValidator, attributes: :image
	# validates_with AttachmentSizeValidator, attributes: :image, less_than: 1.megabytes
	# validates_attachment :image, presence: true, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png"] }
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
