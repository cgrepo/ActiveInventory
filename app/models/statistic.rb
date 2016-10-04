class Statistic < ActiveRecord::Base
	
	belongs_to :Delegation
	belongs_to :Dependency
  belongs_to :Copier
  belongs_to :Printer
  has_one :User

  HUMANIZED_ATTRIBUTES = { 
  	:Delegation_id => 'Delegacion',
  	:Dependency_id => 'Dependencia',
  	:month => 'Mes',
  	:Copier_id => 'Copiadora',
  	:Printer_id => 'Impresora'
  }
  def self.human_attribute_name(attr, options = {})
    HUMANIZED_ATTRIBUTES[attr.to_sym] || super
  end

  validates :Delegation_id, :Dependency_id, :Copier_id, :month, presence: { message: "no puede estar en blanco" }
  validate :check_fields

  def check_fields
   	errors.add(:base, 'Debe tener un numero de hojas o consumibles') if self.sheets.blank? and self.consumable.blank?
   	return true
  end

  def check_equips
   	errors.add(:base, 'Debe tener una impresora o copiadora') if self.Copier_id.blank? and self.Printer_id.blank?
   	return true  	
  end

end
