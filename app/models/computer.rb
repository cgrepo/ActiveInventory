class Computer < ActiveRecord::Base

  belongs_to :Network
  belongs_to :Dependency
  belongs_to :Worker
  has_one :Screen
  has_one :User
  has_many	:ServiceRequest
  
  include AtLeastOne
  
end
