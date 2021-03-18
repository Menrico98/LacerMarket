class Content < ApplicationRecord
	belongs_to :user, :optional => true

  	has_attached_file :cover, styles: { medium: "300x>", thumb: "100x>" }
  	validates_attachment_content_type :cover, content_type: /\Aimage\/.*\z/
end
