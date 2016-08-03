class Memo < ActiveRecord::Base

	def combined_value
		self.size.to_s + ' ' +  self.msize
	end
end
