class Telephone < ActiveRecord::Base
  belongs_to :Dependency
  include AtLeastOne
end
