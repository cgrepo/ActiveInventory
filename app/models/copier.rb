class Copier < ActiveRecord::Base

  belongs_to :Network
  belongs_to :Dependency
  has_one :Consumable
  has_one :statistic
  has_many	:ServiceRequest
  has_one :User
  include AtLeastOne
  
end
