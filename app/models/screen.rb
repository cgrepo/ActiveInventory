class Screen < ActiveRecord::Base

	belongs_to :Delegation
  belongs_to :Dependency
  belongs_to :Computer
  has_many	:ServiceRequest
  has_one :User
  
  include AtLeastOne
  
HUMANIZED_ATTRIBUTES = { 
  	:brand => 'Marca',
    :inch => 'Pulgadas'
  }
  def self.human_attribute_name(attr, options = {})
    HUMANIZED_ATTRIBUTES[attr.to_sym] || super
  end
  
  validates :brand, :inch, presence: { message: "no puede estar en blanco" }

end
