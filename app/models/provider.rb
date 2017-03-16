class Provider < ActiveRecord::Base

	has_many	:ServiceRequest
	has_one :User
	
  def nserie=(data)
    write_attribute(:nserie, data.to_s.upcase!)
  end

  def notes=(data)
    write_attribute(:notes, data.to_s.upcase!)
  end
  
end
