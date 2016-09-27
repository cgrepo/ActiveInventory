class Screen < ActiveRecord::Base

  belongs_to :Dependency
  belongs_to :Computer
  has_many	:ServiceRequest
  has_one :User
  
  include AtLeastOne
  
end
