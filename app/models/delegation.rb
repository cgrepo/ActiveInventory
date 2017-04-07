class Delegation < ActiveRecord::Base
 	
 	has_many :dependencies
 	has_one :User
    has_many :Scanner
end
