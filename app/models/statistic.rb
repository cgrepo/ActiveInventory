class Statistic < ActiveRecord::Base

  belongs_to :Copier
  belongs_to :Printer
  has_one :User
  
end
