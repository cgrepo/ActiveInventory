class Power < ActiveRecord::Base

  belongs_to :Dependency
  has_many	:ServiceRequest
  has_one :User

  include AtLeastOne

end
