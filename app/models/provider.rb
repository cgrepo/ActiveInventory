class Provider < ActiveRecord::Base

	has_many	:ServiceRequest
	has_one :User
end
