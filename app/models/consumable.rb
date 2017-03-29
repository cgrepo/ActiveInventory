class Consumable < ActiveRecord::Base

  belongs_to :Copier
  belongs_to :Printer
  has_one :User
 	
  def model=(data)
    write_attribute(:model, data.to_s.upcase)
  end

end
