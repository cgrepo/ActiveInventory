class Provider < ActiveRecord::Base

	has_many	:ServiceRequest
	has_one :User
	
  def name=(data)
    write_attribute(:name, data.to_s.upcase)
  end

  def address=(data)
    write_attribute(:address, data.to_s.upcase)
  end
  
  def rfc=(data)
  	write_attribute(:rfc, data.to_s.upcase)
  end
end
