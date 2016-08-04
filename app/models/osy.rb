class Osy < ActiveRecord::Base

	def combined_value
		self.name + ' ' +  self.version.to_s
	end
end
