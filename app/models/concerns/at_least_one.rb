module AtLeastOne
  extend ActiveSupport::Concern
  # include ActiveRecord::Validations
  # include ActiveModel::Validations
  
	included do
		validate	:check_fields
		validate	:check_dd
		
		validates :ninventary, uniqueness: {message: "ya ha sido usado"}, unless: Proc.new {|o| o.ninventary.blank? }
		validates :ninventary, numericality: {message: "deben ser solo numeros"}, unless: Proc.new {|o| o.ninventary.blank? }
		validates :nserie, uniqueness: {message: "ya ha sido usado", case_sensitive: false}, unless: Proc.new {|o| o.nserie.blank? }
		
	end


	HUMANIZED_ATTRIBUTES = { :name=> 'Nombre', :Delegation_id => 'Delegacion', :Dependency_id => 'Dependencia', 
	                         :ninventary => 'Numero Inventario', :nserie => 'Numero Serie' }

  def self.human_attribute_name(attr, options = {})
    HUMANIZED_ATTRIBUTES[attr.to_sym] || super
  end

  def check_fields
    errors.add(:base, 'Debe tener un numero de inventario o serie') if self.ninventary.blank? and self.nserie.blank?
    return true
  end

  def check_dd
   	errors.add(:base, 'Debe contar con una Delegacion y Dependencia para poder ser creado') if self.Delegation.blank? || self.Dependency.blank?
   	return true
  end
  
end