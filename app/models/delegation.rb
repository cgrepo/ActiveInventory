class Delegation < ActiveRecord::Base
 	
 	has_many :Dependencies
 	has_one  :User
    has_many :Scanners
end
