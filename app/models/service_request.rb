class ServiceRequest < ActiveRecord::Base

  belongs_to :Delegation
  belongs_to :Dependency
  belongs_to :Provider
  belongs_to :Copier
  belongs_to :Printer
  belongs_to :Screen
  belongs_to :Telephone
  belongs_to :Power
  belongs_to :Scanner
  has_one :User
  
   HUMANIZED_ATTRIBUTES = {
    :kind=> 'Tipo',
    :itDiagnosis => 'Diagnostico TI',
    :RequestDate => 'Fecha solicitud', 
    :DocumentRequest => 'Solicitud', 
    :ProviderDiagnosis => 'Diagnostico Proveedor',
    :ExecutionDate => 'Fecha ejecucion',
    :History => 'Bitacora'
  }

  def self.human_attribute_name(attr, options = {})
    HUMANIZED_ATTRIBUTES[attr.to_sym] || super
  end

  validates :kind, :itDiagnosis, :RequestDate, :DocumentRequest, :Delegation, :Dependency,  :Provider, 
  	presence: { message: "no puede estar en blanco" }


end
