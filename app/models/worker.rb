class Worker < ActiveRecord::Base

	belongs_to :Delegation
  belongs_to :Dependency
  has_one :User
  
end
