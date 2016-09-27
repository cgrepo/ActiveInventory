class Hardd < ActiveRecord::Base

	has_one :User

	def combined_value
		self.size.to_s + ' ' +  self.tsize
	end

end
