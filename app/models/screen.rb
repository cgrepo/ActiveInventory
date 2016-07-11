class Screen < ActiveRecord::Base
  belongs_to :Dependency
  belongs_to :Computer
  include AtLeastOne
end
