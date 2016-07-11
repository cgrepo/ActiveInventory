class Printer < ActiveRecord::Base
  belongs_to :Network
  belongs_to :Dependency
  has_many :Consumables
  has_one :statistic

  validate	:check_fields
def check_fields
    errors.add(:base, 'Debe tener un numero de inventario o serie') if ninventary.blank? and nserie.blank?
    return true     
  end
end
 