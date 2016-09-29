class Printer < ActiveRecord::Base
	belongs_to :Delegation
  belongs_to :Dependency
  belongs_to :Network  
  has_many :Consumables
  has_one :statistic
  has_many	:ServiceRequest
  has_one :User
  
  include AtLeastOne

end
 