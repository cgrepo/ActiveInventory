module AtLeastOne
	extend ActiveSupport::Concern

	included do
		validate	:check_fields
	end

	def check_fields
   	errors.add(:base, 'Debe tener un numero de inventario o serie') if ninventary.blank? and nserie.blank?
   	return true     
  end

end