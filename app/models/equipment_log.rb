class EquipmentLog < ActiveRecord::Base
	has_one :User

	HUMANIZED_ATTRIBUTES = { 
    :genus => 'Tipo',
    :key => 'Clave',
    :inDate => '',
    :diagnosis => 'Diagnostico inicial'

  }
  def self.human_attribute_name(attr, options = {})
    HUMANIZED_ATTRIBUTES[attr.to_sym] || super
  end
  
  validates :genus, :key, :inDate, :diagnosis, presence: { message: "no puede estar en blanco" }
end
