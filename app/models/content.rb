class Content < ApplicationRecord
	extend FriendlyId
    friendly_id :titolo, use: :slugged
	belongs_to :user, :optional => true

  	has_attached_file :cover
  	has_many:sales
  	validates_attachment_content_type :cover, content_type: /\Aimage\/.*\z/

  	 validates :titolo,:descrizione,:price, presence: true
  	 validates :cover, attachment_presence: true
  	

  	
end
