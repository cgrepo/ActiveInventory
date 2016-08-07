class Processor < ActiveRecord::Base
	validates :modelp, uniqueness: true
	
	def combined_value
		self.brand + ' ' +  self.genus +  ' ' + self.modelp +  ' ' + self.speed
	end
end
