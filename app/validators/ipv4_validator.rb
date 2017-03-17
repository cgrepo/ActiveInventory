class Ipv4Validator < ActiveModel::EachValidator
	def validate_each(record, attribute, value)
    unless IPAddress.valid?value  	
      record.errors[attribute] << (options[:message] || "formato IPv4 incorrecto")
    end
  end
end