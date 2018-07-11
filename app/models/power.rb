class Power < ActiveRecord::Base
	
	belongs_to :Delegation
  belongs_to :Dependency
  has_many	:ServiceRequest
  has_one :User

  include AtLeastOne
	HUMANIZED_ATTRIBUTES = {  	:brand => 'Marca'  }
  def self.human_attribute_name(attr, options = {})
    HUMANIZED_ATTRIBUTES[attr.to_sym] || super
  end
  
  #validates :brand, presence: { message: "no puede estar en blanco" }

  def nserie=(data)
    write_attribute(:nserie, data.to_s.upcase)
  end

  def notes=(data)
    write_attribute(:notes, data.to_s.upcase)
  end
  
end
