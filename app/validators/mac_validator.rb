class MacValidator < ActiveModel::EachValidator
	def validate_each(record, attribute, value)
    unless value =~ /\A([0-9a-fA-F]{2}[:-]){5}[0-9a-fA-F]{2}\z/i    	
      record.errors[attribute] << (options[:message] || "formato Mac incorrecto")
    end
  end
end