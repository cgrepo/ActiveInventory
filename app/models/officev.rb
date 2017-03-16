class Officev < ActiveRecord::Base

	has_one :User

	def name=(data)
		write_attribute(:name, data.to_s.upcase!)
	end

end
