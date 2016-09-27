class Printer < ActiveRecord::Base
  
  belongs_to :Network
  belongs_to :Dependency
  has_many :Consumables
  has_one :statistic
  has_many	:ServiceRequest
  has_one :User
  
  include AtLeastOne

end
 