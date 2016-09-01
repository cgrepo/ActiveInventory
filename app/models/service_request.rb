class ServiceRequest < ActiveRecord::Base
  belongs_to :Delegation
  belongs_to :Dependency
  belongs_to :Copier
  belongs_to :Provider
end
