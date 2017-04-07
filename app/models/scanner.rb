class Scanner < ActiveRecord::Base
  belongs_to :delegation
  belongs_to :dependency
  belongs_to :network
  
end
