class BrandModel < ActiveRecord::Base

	has_one :User
  
  def brandx=(data)
    write_attribute(:brandx, data.to_s.upcase!)
  end

  def modelx=(data)
    write_attribute(:modelx, data.to_s.upcase!)
  end
  
end
