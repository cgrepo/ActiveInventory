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

  def diagnosis=(data)
    write_attribute(:diagnosis, data.to_s.upcase)
  end

  def solution=(data)
    write_attribute(:solution, data.to_s.upcase)
  end

  def key=(data)
    write_attribute(:key, data.to_s.upcase)
  end
  
end
