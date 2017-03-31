class Printer < ActiveRecord::Base
	belongs_to :Delegation
  belongs_to :Dependency
  belongs_to :Network  
  has_many :Consumables
  has_one :statistic
  has_many	:ServiceRequest
  has_one :User
  
  include AtLeastOne

	HUMANIZED_ATTRIBUTES = { 
    :ninventary => 'Numero de Inventario',
    :brand => 'Marca'  
  }
  def self.human_attribute_name(attr, options = {})
    HUMANIZED_ATTRIBUTES[attr.to_sym] || super
  end
  
  validates_numericality_of :ninventary, message:'deben ser solo numeros'
  validates :ninventary, uniqueness: {message: "El numero de Inventario ya ha sido usado"}
  validates :brand, :genus, presence: { message: "no puede estar en blanco" }
  validates :wifi_mac, mac: true, presence: { message: "debe proporcionar la mac del Wifi" }, :if => :wifi_set?
  validates :net_mac, mac: true, presence: { message: "debe proporcionar la mac de Lan" }, :if => :net_set?

  def wifi_set?
  	wifi
  end

  def net_set?
  	net
  end

  # def ipdata_set?
    
  # end
end
 