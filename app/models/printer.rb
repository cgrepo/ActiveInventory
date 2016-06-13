class Printer < ActiveRecord::Base
  belongs_to :Dependency
  has_many :Consumables
  has_one :statistic
end
