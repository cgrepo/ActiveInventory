class Telephone < ActiveRecord::Base

	belongs_to :Delegation
  belongs_to :Dependency
  has_one :User
  
  include AtLeastOne

   HUMANIZED_ATTRIBUTES = { 
  	:Delegation_id => 'Delegacion',
  	:Dependency_id => 'Dependencia',
  	:brand => 'Marca',
  	:model => 'Modelo',
  	:genus => 'Tipo',
  	:number => 'Numero'
  }
  def self.human_attribute_name(attr, options = {})
    HUMANIZED_ATTRIBUTES[attr.to_sym] || super
  end

  validates :Delegation_id, :Dependency_id, :brand, :model, :genus, presence: { message: "no puede estar en blanco" }
  validates :ip, :mac, presence: { message: "debe proporcionar la ip y mac del equipo" }, :if => :voip_set?

  def voip_set?
  	genus == 'VOIP'
  end
end
