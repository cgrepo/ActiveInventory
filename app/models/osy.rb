class Osy < ActiveRecord::Base

	has_one :User
	
	def combined_value
		self.name + ' ' +  self.version.to_s
	end

	def name=(data)
		write_attribute(:name, data.to_s.upcase!)
	end

end
