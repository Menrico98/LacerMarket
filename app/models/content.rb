class Content < ApplicationRecord
	belongs_to :user, :optional => true

  	has_attached_file :cover
  	validates_attachment_content_type :cover, content_type: /\Aimage\/.*\z/

  	 validates :titolo,:descrizione,:price, presence: true
  	 validates :cover, attachment_presence: true
  	 validates :allegato, attachment_presence: true

  	
end
