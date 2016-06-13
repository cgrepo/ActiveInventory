class Copier < ActiveRecord::Base
  belongs_to :Dependency
  has_one :Consumable
  has_one :statistic
end
