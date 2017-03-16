class Processor < ActiveRecord::Base

	has_one :User
	
	validates :modelp, uniqueness: true, unless: :speed

	def combined_value
		self.brand + ' ' +  self.genus +  ' ' + self.modelp +  ' ' + self.speed
	end

  def modelp=(data)
    write_attribute(:modelp, data.to_s.upcase!)
  end
end
