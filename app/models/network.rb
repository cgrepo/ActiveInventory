class Network < ActiveRecord::Base
	has_many :Computers
	has_many :Printers
	has_many :Copiers
end
