class Hardd < ActiveRecord::Base

	def combined_value
		self.size.to_s + ' ' +  self.tsize
	end

end
