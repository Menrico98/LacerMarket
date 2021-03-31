class Sale < ApplicationRecord
	before_create:generate_guid
	belongs_to:content
	private
		def generte_guid
			self.guid =SecureRandon.uuid()
		end
end
