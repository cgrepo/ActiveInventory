class Copier < ActiveRecord::Base

  belongs_to :Delegation
  belongs_to :Dependency
  belongs_to :Network
  has_one :Consumable
  has_one :statistic
  has_many	:ServiceRequest
  has_one :User
  
  include AtLeastOne
  
  HUMANIZED_ATTRIBUTES = { :brand => 'Marca'  }
  def self.human_attribute_name(attr, options = {})
    HUMANIZED_ATTRIBUTES[attr.to_sym] || super
  end
  
  validates :brand, presence: { message: "no puede estar en blanco" }
  validates :wifi_mac, presence: { message: "debe proporcionar la mac del Wifi" }, :if => :wifi_set?
  validates :net_mac, presence: { message: "debe proporcionar la mac de Lan" }, :if => :net_set?

  def wifi_set?
  	wifi
  end

  def net_set?
  	net
  end
  
  def nserie=(data)
    write_attribute(:nserie, data.to_s.upcase!)
  end

  def notes=(data)
    write_attribute(:notes, data.to_s.upcase!)
  end
  
end
