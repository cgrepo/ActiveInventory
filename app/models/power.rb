class Power < ActiveRecord::Base
  belongs_to :Dependency
  has_many	:ServiceRequest
  
  include AtLeastOne
end
