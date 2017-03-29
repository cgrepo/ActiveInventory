class Dependency < ActiveRecord::Base
  
  belongs_to :Delegation
  has_one :User
  
  has_many :Powers
  has_many :workers
  has_many :Copiers
  has_many :Printers
  has_many :Computers

	validates :name, :responsable, :Delegation,	presence: { message: "no puede estar en blanco" }
	
	def name=(data)
		write_attribute(:name, data.to_s.upcase)
	end

	def address=(data)
		write_attribute(:address, data.to_s.upcase)
	end
	#ATTENTION THIS IS USING SCOPES JUST TO REMAINDME THAT WE CAN USE DEFINE OR SCOPE IN ORDER TO MAKE SOME METHOD AVAILABLE FOR THE CLASSES
	# 	filterrific( default_filter_params: { sorted_by: 'created_at_desc' }, available_filters: [:sorted_by ] )

	# 	scope :sorted_by, lambda { |sort_option|
	# 		direction = (sort_option =~ /desc$/) ? 'desc' : 'asc'

	# 		case sort_option.to_s
	# 			when /^created_at_/
	# 				order("dependencies.created_at #{direction}")
	# 			when /^name_/
	# 				order("LOWER(dependencies.name) #{direction}")
	# 			else
 #    			raise(ArgumentError, "Invalid sort option: #{ sort_option.inspect }")
	# 		end
	# 	}
	
	# def self.options_for_sorted_by
 #    [
 #      ['name (a-z)', 'name_asc'],
 #      ['Registration date (newest first)', 'created_at_desc'],
 #      ['Registration date (oldest first)', 'created_at_asc']
 #    ]
 #  end

end
