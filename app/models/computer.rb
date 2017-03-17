class Computer < ActiveRecord::Base
	
	belongs_to :Delegation
  belongs_to :Dependency
  belongs_to :Network
  belongs_to :Worker
  has_one :Screen
  has_one :User
  has_many	:ServiceRequest
  
  include AtLeastOne
  
  HUMANIZED_ATTRIBUTES = {
    :ninventary => 'Numero de Inventario',
  	:name => 'Nombre equipo',
  	:brand => 'Marca',
    :genus => 'Tipo',
    :processor => 'Procesador',
    :hd => 'Disco Duro',
    :memory => 'Memoria',
    :os => 'Sistema Operativo',
    :voffice => 'Version Office',
    :users => 'Usuarios',
    :workgroup => 'Grupo de Trabajo',
    :maclan => 'MAC LAN',
    :iplan => 'IP LAN',
    :masklan => 'Mascara LAN'
  }
  def self.human_attribute_name(attr, options = {})
    HUMANIZED_ATTRIBUTES[attr.to_sym] || super
  end
  
  validates :name, :brand, :genus, :processor, :hd, :memory, :os, :voffice, :users, :workgroup,
   :maclan, :iplan, :masklan, presence: { message: "no puede estar en blanco" }
  validates_numericality_of :ninventary, message:'deben ser solo numeros'
  validates :macbluetooth, presence: { message: "debe proporcionar la mac bluetooth" }, :if => :bluetooth_set?
  validates :macwifi, :ipwifi, :maskwifi, presence: { message: "debe proporcionar todos los datos de wifi" }, :if => :wifi_set?
  validates :macwifi, mac: true
  def wifi_set?
  	wifi
  end

  def bluetooth_set?
  	bluetooth
  end

end
