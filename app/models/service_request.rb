class ServiceRequest < ActiveRecord::Base
  belongs_to :Delegation
  belongs_to :Dependency
  belongs_to :Provider
  belongs_to :Copier
  belongs_to :Printer
  belongs_to :Screen
  belongs_to :Telephone
  belongs_to :Power
end
