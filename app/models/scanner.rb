class Scanner < ActiveRecord::Base
  belongs_to :Delegation
  belongs_to :Dependency
  belongs_to :Network
  
end
