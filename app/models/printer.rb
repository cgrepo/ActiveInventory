class Printer < ActiveRecord::Base
  
  belongs_to :Network
  belongs_to :Dependency
  has_many :Consumables
  has_one :statistic
  include AtLeastOne
end
 