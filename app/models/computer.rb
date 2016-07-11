class Computer < ActiveRecord::Base
  belongs_to :Network
  belongs_to :Dependency
  belongs_to :Worker
  has_one :Screen
  include AtLeastOne
end
