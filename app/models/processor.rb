class Processor < ActiveRecord::Base
	def combined_value
		self.brand +  self.genus + self.modelp + self.speed
	end
end
