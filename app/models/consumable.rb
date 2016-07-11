class Consumable < ActiveRecord::Base
  belongs_to :Copier
  belongs_to :Printer
  include AtLeastOne
end
