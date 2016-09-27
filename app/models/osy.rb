class Osy < ActiveRecord::Base

	has_one :User
	
	def combined_value
		self.name + ' ' +  self.version.to_s
	end
end
