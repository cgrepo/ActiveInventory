class Dependency < ActiveRecord::Base
  
  belongs_to :Delegation
  has_one :User
  
  has_many :Powers
  has_many :workers
  has_many :Copiers
  has_many :Printers
  has_many :Computers

	validates :name, :responsable, :Delegation,	presence: { message: "no puede estar en blanco" }
end
