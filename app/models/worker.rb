class Worker < ActiveRecord::Base

	belongs_to :Delegation
  belongs_to :Dependency
  has_one :User

  HUMANIZED_ATTRIBUTES = { 
  	:name => 'Nombre',
  	:profile => 'Perfil',
  	:Delegation => 'Delegacion',
    :Dependency => 'Dependencia', 
  }
  def self.human_attribute_name(attr, options = {})
    HUMANIZED_ATTRIBUTES[attr.to_sym] || super
  end
  
  validates :name, :profile, :Delegation, :Dependency,	presence: { message: "no puede estar en blanco" }
end
