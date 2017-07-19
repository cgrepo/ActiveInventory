class Scanner < ActiveRecord::Base
  belongs_to :Delegation
  belongs_to :Dependency
  belongs_to :Network
  has_many	:ServiceRequest
end
