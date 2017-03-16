class CommonError < ActiveRecord::Base
	def description=(data)
		write_attribute(:description, data.to_s.upcase!)
	end
end
