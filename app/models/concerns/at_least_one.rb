module AtLeastOne
  extend ActiveSupport::Concern

	included do
		validate	:check_fields
		validate	:check_dd
	end


	HUMANIZED_ATTRIBUTES = { :name=> 'Nombre', :Delegation_id => 'Delegacion', :Dependency_id => 'Dependencia' }

  def self.human_attribute_name(attr, options = {})
    HUMANIZED_ATTRIBUTES[attr.to_sym] || super
  end

	def check_fields
    errors.add(:base, 'Debe tener un numero de inventario o serie') if self.ninventary.blank? and self.nserie.blank?
    unless self.ninventary.blank?
      validates_numericality_of :ninventary, message:'deben ser solo numeros'
      validates :ninventary, uniqueness: {message: "El numero de Inventario ya ha sido usado"}
    end
    unless self.nserie.blank?
      validates :nserie, uniqueness: {message: "El numero de Serie ya ha sido usado"}
    end
    return true
  end

  def check_dd
   	errors.add(:base, 'Debe contar con una Delegacion y Dependencia para poder ser creado') if self.Delegation.blank? || self.Dependency.blank?
   	return true
  end
  
end