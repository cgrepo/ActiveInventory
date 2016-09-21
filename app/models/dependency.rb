class Dependency < ActiveRecord::Base
  
  belongs_to :Delegation
  belongs_to :User
  
  has_many :Powers
  has_many :workers
  has_many :Copiers
  has_many :Printers
  has_many :Computers

end
