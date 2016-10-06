class Network < ActiveRecord::Base
	
	has_many :Computers
	has_many :Printers
	has_many :Copiers
	has_one :User
	HUMANIZED_ATTRIBUTES = { 
  	:linktype => 'Tipo de Conexion',
  	:location => 'Locacion',
    :iprange  => 'Rango IPS',
    :ip =>  'IP Gateway'
  }
  def self.human_attribute_name(attr, options = {})
    HUMANIZED_ATTRIBUTES[attr.to_sym] || super
  end
  
  validates :linktype, :location, :iprange,	:ip, presence: { message: "no puede estar en blanco" }

end
