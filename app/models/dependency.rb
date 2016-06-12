class Dependency < ActiveRecord::Base
  belongs_to :Delegation
  has_many 	:Powers
  has_many :workers
  has_many :Copiers
  has_many :Printers
end
