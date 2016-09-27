class Telephone < ActiveRecord::Base

  belongs_to :Dependency
  has_one :User
  
  include AtLeastOne
end
